module BsGenerator
  class BsBase

    def self.generate_bs(options={})
    end

    def self.generate(options={})
      if options[:times] && options[:times] > 1
        bs = []
        options[:times].times { bs << generate_bs(options) }
        bs
      else
        generate_bs(options)
      end
    end
  end

  # Ruby port of http://startupista.com/corporate-bullshit-generator/
  class Corporate < BsBase
    ADJECTIVES = [
      "incredible",
      "great",
      "fantastic",
      "phenomenal",
      "superb",
      "exciting",
      "inspiring",
      "strong",
      "compelling",
      "solid",
      "exceptional",
      "promising",
      "growing",
      "successful",
      "prosperous",
      "revolutionary",
      "exciting",
      "market-altering"
    ]

    VERBS = [
      "aggregate",
      "architect",
      "benchmark",
      "brand",
      "cultivate",
      "deliver",
      "deploy",
      "disintermediate",
      "drive",
      "e-enable",
      "embrace",
      "empower",
      "enable",
      "engage",
      "engineer",
      "enhance",
      "envision",
      "evolve",
      "expedite",
      "exploit",
      "extend",
      "facilitate",
      "generate",
      "grow",
      "harness",
      "implement",
      "incentivize",
      "incubate",
      "innovate",
      "integrate",
      "iterate",
      "leverage",
      "matrix",
      "maximize",
      "mesh",
      "monetize",
      "morph",
      "optimize",
      "orchestrate",
      "productize",
      "recontextualize",
      "redefine",
      "reintermediate",
      "reinvent",
      "repurpose",
      "revolutionize",
      "scale",
      "seize",
      "strategize",
      "streamline",
      "syndicate",
      "synergize",
      "synthesize",
      "target",
      "transform",
      "transition",
      "unleash",
      "utilize",
      "visualize",
      "whiteboard",
      "add value",
      "leverage",
      "capitalize",
      "reorganize",
      "interface",
      "negotiate",
      "institutionalize"
    ]

    NOUNS = [
      "action-item",
      "application",
      "architecture",
      "bandwidth",
      "channel",
      "community",
      "content",
      "convergence",
      "deliverable",
      "e-busines",
      "e-commerce",
      "e-market",
      "e-service",
      "e-tailer",
      "experience",
      "eyeball",
      "functionality",
      "infrastructure",
      "initiative",
      "interface",
      "market",
      "methodology",
      "metric",
      "mindshare",
      "model",
      "network",
      "niche",
      "paradigm",
      "partnership",
      "platform",
      "portal",
      "relationship",
      "semantic content",
      "ROI",
      "synergy",
      "web-readines",
      "schema",
      "solution",
      "supply-chain",
      "system",
      "technology",
      "user",
      "portal",
      "vertical",
      "web service",
      "institution",
      "organization",
      "database",
      "RSS feed",
      "social network"
    ]

    ADVERBS = [
      "strategically",
      "energetically",
      "expediently",
      "expertly",
      "greatly",
      "swiftly",
      "cautiously",
      "deliberatly"
    ]

    PHRASES = [
      "We're going to {VERB} processes and systems that aren't working and {VERB} them so you get the {NOUN} you need.",
      "We're going to collaborate across {NOUN}s; most importantly, we're going have a {ADJECTIVE} time winning with clients and generating {ADJECTIVE} financial performance.",
      "The organizational changes we are making will help us {VERB} a culture of {ADJECTIVE} customer focus.",
      "We will {VERB} global P&L responsibility as well as business and {NOUN} strategy.",
      "I ask you to {VERB} and understand one key thing: What we are being asked to do -- execute {ADVERB} on our emerging {NOUN} -- has not changed.",
      "The goal here is simple: {VERB} teams with {ADJECTIVE} accountability and responsibility for {NOUN} and business lines.",
      "We now have a structure and a {ADJECTIVE} start to {VERB} the leadership {NOUN}s within the team.",
      "The creation of our {NOUN} unit is the logical evolution of {ADJECTIVE} work that has been done in the {NOUN} pillar.",
      "Organizational diversity and accountability is paramount for long term success and a happy work environment."
    ]
      
    def self.generate_bs(options={})
      result = PHRASES[rand(PHRASES.length + 1)]
      result.gsub!("{VERB}", VERBS[rand(VERBS.length + 1)]) rescue nil
      result.gsub!("{NOUN}", NOUNS[rand(NOUNS.length + 1)]) rescue nil
      result.gsub!("{ADJECTIVE}", ADJECTIVES[rand(ADJECTIVES.length + 1)]) rescue nil
      result.gsub!("{ADVERB}", ADVERBS[rand(ADVERBS.length + 1)]) rescue nil
      result
    end


  end

  # Ruby port of http://emptybottle.org/bullshit/index.php
  class Web2 < BsBase
    PERSON = ["I am", "We are", "My team is"]
    VERBS = ["aggregating", "beta-testing", "integrating", "capturing", "creating", "designing", "disintermediating", "enabling", "integrating", "posting", "remixing", "reinventing", "sharing", "syndicating", "tagging", "incentivizing", "engaging", "reinventing", "harnessing", "integrating"]
    ADJECTIVES = ["AJAX-enabled","A-list","authentic","citizen-media","Cluetrain","data-driven","dynamic","embedded","long-tail","peer-to-peer","podcasting","rss-capable","semantic","social","standards-compliant","user-centred","user-contributed","viral","blogging","rich-client"]
    NOUNS = ["APIs","blogospheres","communities","ecologies","feeds","folksonomies","life-hacks","mashups","network effects","networking","platforms","podcasts","value","web services","weblogs","widgets","wikis","synergies","ad delivery","tagclouds"]
    TIME = ["It might take another couple of hours", "I should be done by afternoon", "I should be done by evening", "I don't think this should take more than a few hours", "Shouldn't take too long"]

    def self.generate_bs(options={})
      options = {:prefix => "I am", :add_time => true}.merge(options)
      v = VERBS[rand(VERBS.length + 1)]
      a = ADJECTIVES[rand(ADJECTIVES.length + 1)]
      n = NOUNS[rand(NOUNS.length + 1)]
      t = TIME[rand(TIME.length + 1)]
      if options[:add_time] == true
        "%s %s %s %s. %s" % [options[:prefix], v, a , n, t]
      else
        "%s %s %s %s" % [options[:prefix], v, a , n]
      end
    end

  end
end
