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
      { label: "Home", href: "/#home" },
      { label: "About", href: "/#about" },
      { label: "Projects", href: "/#projects" },
      { label: "Skills", href: "/#skills" },
      { label: "Experience", href: "/#experience" },
      { label: "Contact", href: "/#contact" }
    ]
  end

  def cv_profile
    {
      name: "Mareks Voicickis",
      title: "Marine Engineer",
      summary: "Effective communicator with strong collaboration skills and experience in team and people management.",
      phone: "+353 87 234 6580",
      email: "mvoicickis@gmail.com",
      location: "Schmallenberg, Germany",
      skills: [
        "Bilingual: fluent English / Latvian",
        "HTML", "CSS", "JavaScript", "Microsoft", "Linux",
        "Project Management", "Seminar Delivery", "Leadership", "Data Analysis",
        "Creativity", "Public Relations", "Negotiation & Sales", "Effective Communication",
        "Goal Setting", "Excellent Teamwork", "Organization Skills", "Customer Service",
        "Time Management", "Photography", "Videography"
      ],
      experience: [
        {
          role: "Housekeeping staff member",
          company: "Deimann 5* hotel",
          location: "Alte Handelsstraße 5, Germany",
          dates: "2025 Nov — 2026 May",
          highlights: [
            "Clean guest rooms to 5-star standards",
            "Maintain hygiene, safety, and cleanliness protocols",
            "Respect guest privacy and comfort",
            "Report maintenance issues and room damages",
            "Collaborate with hotel staff to ensure service quality"
          ]
        },
        {
          role: "Co-founder",
          company: "True Impact Marketing",
          location: nil,
          dates: "2024 Sep — 2025",
          highlights: [
            "Lead the web development department",
            "Maintain custom websites and systems",
            "Implement automation and digital tools",
            "Collaborate with executive leadership",
            "Support business development initiatives"
          ]
        },
        {
          role: "Director of Marketing",
          company: "Prife Wellness Gallery",
          location: "Guatemala",
          dates: "2025 April — 2025 Sep",
          highlights: [
            "Developed and maintained the online booking and website system",
            "Provided front desk and support",
            "Marketing and client outreach",
            "Managed client scheduling and follow-ups"
          ]
        },
        {
          role: "Executive Director",
          company: "Panda Academy",
          location: nil,
          dates: "2023 Nov — 2024 Nov",
          highlights: [
            "Leadership and team management",
            "Business development",
            "Creation of goals and objectives",
            "Marketing and public relations",
            "English instruction"
          ]
        },
        {
          role: "Machine Operator",
          company: "Embed plastic",
          location: "Blessington, County Wicklow",
          dates: "2023 October — 2024 April",
          highlights: [
            "Machine engineering",
            "Machine operation management",
            "Performance monitoring",
            "Quality control"
          ]
        },
        {
          role: "Executive Director",
          company: "Light Dream Works",
          location: "Dublin, Ireland",
          dates: "2020 February — 2023 September",
          highlights: [
            "Photography team management",
            "Public relations",
            "Negotiation & sales",
            "Website and social media leadership",
            "Videography"
          ]
        },
        {
          role: "Shoot Team In charge",
          company: "Scientology Media Production",
          location: "Dublin, Ireland",
          dates: "2018 May — 2019 October",
          highlights: [
            "Team management",
            "Videography",
            "Organization",
            "Public relations"
          ]
        },
        {
          role: "Project Manager Assistant",
          company: "Youth house",
          location: "Liepaja, Latvia",
          dates: "2013 September — 2017 March",
          highlights: [
            "Organizing events",
            "European project writing",
            "Execution of projects",
            "Kid camps organization",
            "Supervisor of camp"
          ]
        },
        {
          role: "Ship Engineer Cadet",
          company: "Mersrags Port Authority",
          location: "Mersrags, Latvia",
          dates: "2012 February — 2013 March",
          highlights: [
            "Marine vessel equipment oversight",
            "Navigation assistance",
            "Ship maintenance",
            "Port maintenance",
            "Ship guarding"
          ]
        }
      ],
      education: [
        { title: "Marine Engineer", place: "Liepaja Maritime College, Latvia", year: "2016" },
        { title: "Student Hat", place: "Ideal Organisation, Dublin", year: "2017" },
        { title: "Photography, Videography & Art", place: "Ideal Organisation, Dublin", year: "2018" },
        { title: "EMA FastTrack Training", place: "Effective Management Association", year: "2022" },
        { title: "Professional Register", place: "Ideal Organisation, Dublin", year: "2023" },
        { title: "Data Evaluator", place: "Ideal Organisation, Dublin", year: "2023" }
      ],
      achievements: [
        { title: "Volunteer Team Leader", place: "Youth Guard", year: "2014" },
        { title: "Volunteer Project Establishment", place: "Liepājas Bērnu Un Jaunatnes Centrs", year: "2015" },
        { title: "Volunteer", place: "Sea Organization Saint Hill", year: "2017 — 2019" },
        { title: "Volunteer", place: "Drug Free World, The Way to Happiness, Dianetics", year: "2020 — 2024" },
        { title: "Personal Improvement", place: "Santa Clara Mission", year: "2025" }
      ]
    }
  end

  def site_avatar_url
    Site::AVATAR_URL
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
      {
        period: "2012–2016",
        description: "Studied Marine Engineering at Liepāja Maritime College."
      },
      {
        period: "2013–2019",
        description: "Roles in project coordination, team leadership, and media production (events, camps, photography/video teams) in Latvia and Ireland."
      },
      {
        period: "2023–2024",
        description: "Machine operator and academy director roles — hands-on operations and people management."
      },
      {
        period: "2024–2025",
        description: "Co-founded True Impact Marketing, leading web development — built and maintained client websites, started learning HTML/CSS/JavaScript on the job."
      },
      {
        period: "2025–2026",
        description: "Taught myself Ruby and Ruby on Rails while working in hospitality (Deimann 5* hotel) to fund the transition."
      },
      {
        period: "Now",
        description: "Building real SaaS projects (LifePoints live, BeeLove in progress) and looking for my first Rails developer role."
      }
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
