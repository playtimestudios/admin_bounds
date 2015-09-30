require 'memfs/filesystem_access'

module MemFs
  module Fake
    class Symlink < Entry
      include MemFs::FilesystemAccess

      attr_reader :target

      def dereferenced
        @dereferenced ||= fs.find!(target).dereferenced
      end

      def dereferenced_name
        real_target.dereferenced_name
      end

      def dereferenced_path
        dereferenced.dereferenced_path
      end

      def find(path)
        dereferenced.find(path)
      rescue Errno::ENOENT
        nil
      end

      def initialize(path, target)
        super(path)
        @target = target
      end

      def method_missing(meth, *args, &block)
        if dereferenced.respond_to?(meth)
          dereferenced.public_send(meth, *args, &block)
        else
          super
        end
      end

      def respond_to_missing?(meth, include_private)
        dereferenced.respond_to?(meth, include_private) || super
      end

      def type
        'link'
      end

      private

      def real_target
        fs.find(target) || Entry.new(target)
      end
    end
  end
end
