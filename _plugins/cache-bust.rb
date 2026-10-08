# based on https://distresssignal.org/busting-css-cache-with-jekyll-md5-hash
# https://gist.github.com/BryanSchuetz/2ee8c115096d7dd98f294362f6a667db
module Jekyll
  module CacheBust
    class CacheDigester
      require 'digest/md5'
      require 'pathname'

      attr_accessor :file_name, :directory, :pattern

      def initialize(file_name:, directory: nil, pattern: File.join('**', '*'))
        self.file_name = file_name
        self.directory = directory
        self.pattern = pattern
      end

      def digest!
        [file_name, '?', Digest::MD5.hexdigest(file_contents)].join
      end

      private

      def directory_files_content
        target_path = File.join(directory, pattern)
        Dir[target_path].sort.map{|f| File.read(f) unless File.directory?(f) }.join
      end

      def file_content
        local_file_name = file_name.slice((file_name.index('assets/')..-1))
        File.read(local_file_name)
      end

      def file_contents
        is_directory? ? file_content : directory_files_content
      end

      def is_directory?
        directory.nil?
      end
    end

    def bust_file_cache(file_name)
      CacheDigester.new(file_name: file_name, directory: nil).digest!
    end

    # Hash the top-level Sass partials plus the main stylesheet, so any style edit
    # changes the URL. (This used to point at 'assets/_sass', which doesn't exist,
    # so the hash never changed and browsers kept serving a stale main.css.)
    # Vendored icon-font Sass in subfolders is skipped to keep page renders fast.
    def bust_css_cache(file_name)
      CacheDigester.new(file_name: file_name, directory: '.', pattern: '{_sass/*.scss,assets/css/main.scss}').digest!
    end
  end
end

Liquid::Template.register_filter(Jekyll::CacheBust)