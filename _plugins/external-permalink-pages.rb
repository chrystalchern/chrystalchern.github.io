# Pages whose permalink is an external URL (e.g. _pages/mdof.md) exist only to
# add a link to the navbar and search; skip writing them to _site.
module Jekyll
  module ExternalPermalinkPages
    def write(dest)
      return if permalink.to_s.include?('://')

      super
    end
  end
end

Jekyll::Page.prepend(Jekyll::ExternalPermalinkPages)
