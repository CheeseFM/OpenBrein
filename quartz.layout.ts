import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [],
  afterBody: [
    Component.Comments({
      provider: 'giscus',
      options: {
        // from data-repo
        repo: 'CheeseFM/OpenBrein',
        // from data-repo-id
        repoId: 'R_kgDOL9mo2A',
        // from data-category
        category: 'Announcements',
        // from data-category-id
        categoryId: 'DIC_kwDOL9mo2M4Ci4or',
      }
    }),
  ],
  footer: Component.Footer({
    links: {
      Mail: "mailto:jelle@openbrein.org",
      Instagram: "https://www.instagram.com/jelledevr/",
    },
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs(),
    Component.ArticleTitle(),
    Component.ContentMeta(),    
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
  ],
  right: [
    Component.Graph({
      localGraph: {
        showTags: false, // whether to show tags in the graph
      },
      globalGraph: {
        showTags: false, // whether to show tags in the graph
      },
    }),
    Component.DesktopOnly(Component.TableOfContents()),
  ],
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [Component.Breadcrumbs(), Component.ArticleTitle(), Component.ContentMeta()],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(Component.Explorer()),
  ],
  right: [],
}
