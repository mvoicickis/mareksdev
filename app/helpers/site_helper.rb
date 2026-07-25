module SiteHelper
  def site_name
    Site::NAME
  end

  def site_tagline
    Site::TAGLINE
  end

  def site_description
    Site::DESCRIPTION
  end

  def site_link(key)
    Site::LINKS.fetch(key)
  end

  def nav_links
    [
      { label: "Home", href: "#home" },
      { label: "About", href: "#about" },
      { label: "Projects", href: "#projects" },
      { label: "Skills", href: "#skills" },
      { label: "Experience", href: "#experience" },
      { label: "Contact", href: "#contact" }
    ]
  end

  def featured_projects
    [
      {
        name: "LifePoints",
        status: :live,
        status_label: "Live",
        description: "A personal growth tracker that helps users become better than yesterday by tracking meaningful daily habits and progress.",
        tech: [ "Ruby on Rails", "PostgreSQL", "Hotwire", "Turbo", "Tailwind CSS" ],
        demo_url: site_link(:lifepoints_demo),
        github_url: site_link(:lifepoints_github)
      },
      {
        name: "BeeLove",
        status: :in_development,
        status_label: "In Development",
        description: "BeeLove is a Ruby on Rails application designed to help couples strengthen their relationship through shared habits, meaningful activities and better communication.",
        tech: [ "Ruby on Rails", "PostgreSQL", "Tailwind CSS", "Hotwire" ],
        demo_url: nil,
        github_url: site_link(:beelove_github)
      }
    ]
  end

  def skill_groups
    [
      {
        title: "Languages",
        items: [ "Ruby", "JavaScript", "HTML", "CSS", "SQL" ]
      },
      {
        title: "Frameworks",
        items: [ "Ruby on Rails", "Hotwire", "Turbo", "Stimulus", "Tailwind CSS" ]
      },
      {
        title: "Tools",
        items: [ "Git", "GitHub", "Linux", "PostgreSQL", "Cursor", "VS Code" ]
      }
    ]
  end

  def journey_steps
    [
      "Marine Engineering",
      "Web Development",
      "HTML & CSS",
      "JavaScript",
      "Ruby",
      "Ruby on Rails",
      "Building SaaS Applications",
      "Seeking my first Ruby on Rails Developer role"
    ]
  end

  def experiences
    [
      {
        company: "True Impact Marketing",
        role: "Co-Founder",
        highlights: [
          "Built and maintained websites.",
          "Implemented automation.",
          "Worked with leadership."
        ]
      },
      {
        company: "Deimann Hotel",
        role: nil,
        highlights: [
          "Worked in a fast-paced environment while maintaining high quality standards and teamwork."
        ]
      }
    ]
  end
end
