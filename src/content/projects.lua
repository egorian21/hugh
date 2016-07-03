team = require( "src/content/team" )

------------------------------------------------------------------------------
-- Funders
------------------------------------------------------------------------------
local epsrc = {
    name = "EPSRC",
    web = "https://www.epsrc.ac.uk/",
    logo = "epsrc.jpg"
}
local chistera = {
    name = "CHIST-ERA",
    web = "http://www.chistera.eu/",
    logo = "chistera.gif"
}
local microsoft = {
    name = "Microsoft Research",
    web = "https://www.microsoft.com/en-us/research/lab/microsoft-research-cambridge/",
    logo = "microsoft.jpg"
}
local arm = {
    name = "ARM",
    web = "https://www.arm.com/",
    logo = "arm.png"
}

------------------------------------------------------------------------------
-- Projects
------------------------------------------------------------------------------
local projects = {
    {
        acronym = "ALEA",
        title = "Abstraction-Level Energy Accounting for Many-core Programming Languages",
        web = "http://www.eeecs.qub.ac.uk/ALEA/",
        funder = epsrc,
        people = { team.ppetoumenos },
        desc = {
            [[
                Performance profiling has been around for a long time, but there is nothing similar for energy. This project builds
                mechanisms to determine how much energy each line of a program's source code consumes. And, it determines how data 
                structures contribute to energy consumption. Energy consumption will be matched against programming language abstractions,
                from basic-blocks to functions, loops, and parallel constructs, and from variables to data structures, providing developers
                with the information that they need. Without tools like this, developers cannot optimise their programs for energy.
                Built on top of this, we apply machine learning techniques to automatically optimise programs for energy consumption.
            ]],
        }    
    },
    {
        acronym = "DIVIDEND",
        title = "Distributed Heterogeneous Vertically IntegrateD ENergy Efficient Data Centres",
        web = "http://dividend.gforge.inria.fr/",
        funder = chistera,
        people = { team.oergin, team.vseeker },
        desc = {
            [[
                Our world is in the midst of a “big data” revolution, driven by the ubiquitous ability to gather, analyse, and query
                datasets of unprecedented variety and size. The sheer storage volume and processing capacity required to manage these
                datasets has resulted in a transition away from desktop processing and toward warehouse-scale computing inside data
                centres. State-of-the-art data centres, employed by the likes of Google and Facebook, draw 20-30 MW of power, equivalent to
                20,000 homes, with these companies needing many data centres each. The global data centre energy footprint is estimated at
                around 2% of the world’s energy consumption and doubles every five years. Contemporary data centres have an average
                overhead of 90%, meaning that they consume up to 1.9 MW to deliver 1 MW of IT support; this is not cost-effective or
                environmentally sound. If the exponential data growth and processing capacity are to scale in the way that both the public
                and industry have come to rely upon, we must tackle the data centre energy crisis or face the reality of stagnated
                progress. With the semiconductor industry’s inability to further lower operating voltages in processor and memory chips,
                the challenge is in developing technologies for large-scale data-centric computation with energy as a first-order design
                constraint. The DIVIDEND project attacks the data centre energy efficiency bottleneck through vertical integration,
                specialisation, and cross-layer optimisation. Our vision is to present heterogeneous data centres, combining CPUs, GPUs,
                and task-specific accelerators, as a unified entity to the application developer and let the runtime optimise the
                utilisation of the system resources during task execution. DIVIDEND embraces heterogeneity to dramatically lower the energy
                per task through extensive hardware specialisation while maintaining the ease of programmability of a homogeneous
                architecture. To lower communication latency and energy, DIVIDEND leverages SoC integration and prefers a lean
                point-to-point messaging fabric over complex connection-oriented network protocols. DIVIDEND addresses the programmability
                challenge by adapting and extending the industry-led heterogeneous systems architecture programming language and runtime
                initiative to account for energy awareness and data movement. DIVIDEND provides for a cross-layer energy optimisation
                framework via a set of APIs for energy accounting and feedback between hardware, compilation, runtime, and application
                layers. The DIVIDEND project will usher in a new class of vertically integrated data centres and will take a first stab at
                resolving the energy crisis by improving the power usage effectiveness of data centres by at least 50%.
            ]]
        }
    },
    {
        acronym = "SUMMER",
        title = "SchedUling on heterogeneous Mobile Multicores based on quality of ExpeRience",
        web = nil,
        funder = epsrc,
        people = { team.ppetoumenos, team.vseeker },
        desc = {
            [[
                Users want mobile devices that appear fast and responsive, but at the same time have long lasting batteries and do not
                overheat. Achieving both of these at once is difficult. The workloads employed to evaluate mobile optimisations are rarely
                representative of real mobile applications and are oblivious to user perception, focussing only on performance. As a result
                hardware and software designers' decisions do not respect the user's Quality of Experience (QoE). The device either runs
                faster than necessary for optimal QoE, wasting energy, or the device runs too slowly, spoiling QoE. SUMMER will develop the
                first framework to record, replay, and analyse mobile workloads that represent and measure real user experience. Our work
                will expose for the first time the real Pareto trade-off between the user's QoE and energy consumption. The results of this
                project will permit others, from computer architects up to library developers, to make their design decisions with QoE as
                their optimisation target. To show the power of this new approach, we will design the first energy efficient operating
                system scheduler for heterogeneous mobile processors which takes QoE into account. With heterogeneous mobile processors
                just now entering the market, a scheduler able to use them optimally is urgently needed. We expect our scheduler to be at
                least 50% more energy efficient on average than the standard Linux scheduler on an ARM BIG.LITTLE system.
            ]]
        }
    },
    {   -- Chad Verbowski
        title = "Self‐Optimisation of Internet Services",
        web = nil,
        funder = microsoft,
        people = { team.cverbowski },
        desc = {
            [[
                Modern Internet services such as search, social networking, online shopping, media services, gaming, and email can span as
                many as 1,000,000 servers, requiring multiple geographically distributed instances to serve customers around the world. The
                financial cost of building and operating each of these various services can be more than US$1 billion annually. In
                addition, it is critical that the performance of these services are highly optimised across all servers and datacenter
                locations. Experiments slowing user responses by as little as 100ms have caused a measurable decrease in user engagement.
                Given the large scale and impact of these systems, optimising them presents a significant resource saving opportunity and a
                chance to improve overall service quality.
            ]],
            [[
                This project presents a novel idea for making significant improvements to the capacity utilisation of these servers thus
                potentially saving many millions of dollars annually, and in addition will improve the end-user perceived availability of
                these services and reduce the latency they experience when using them.
            ]]
        }
    },
    {   -- Volker Seeker
        title = "User Experience Driven CPU Frequency Scaling On Mobile Devices Towards Better Energy Efficiency",
        web = nil,
        funder = arm,
        people = { team.ppetoumenos, team.vseeker },
        desc = {
            [[
               Mobile computing devices such as smartphones and tablets have become tightly integrated with many people’s life, both at
               work and at home. Users spend large amounts of time interacting with their mobile device and demand an excellent user
               experience in terms of responsiveness, whilst simultaneously expecting a long battery life between charging cycles.
               Frequency governors, responsible for increasing or decreasing the CPU clock frequency depending on the current workload and
               external events, try to balance the two contrasting goals of high performance and low energy consumption. However, despite
               their critical role in providing energy efficiency it is difficult to measure the effectiveness of frequency governors in an
               interactive environment. In this paper we develop a novel methodology for creating repeatable, fully automated, realistic,
               workloads that can accurately measure time lag in interactive applications resulting from non-optimally selected operating
               frequencies. We also introduce a new metric capturing the user experience for different ANDROID frequency governors. We
               evaluate interactive workloads to demonstrate how our approach enables us to automatically record and replay sequences of
               user interactions for different system configurations. We demonstrate that none of the available ANDROID frequency governors
               performs particularly well, but leave substantial room for improvement. We show that energy savings of up to 27% are
               possible, whilst delivering a user experience that is better than that provided by the standard ANDROID frequency governor.
               We also show that it is possible to save 47% energy with performance that is indistinguishable from permanently running the
               CPU at the highest frequency.
            ]]
        },
    },
    {   -- Stephen Kyle
        title = "Virtual Machine Optimisation and Testing",
        web = nil,
        funder = arm,
        people = { team.skyle },
        desc = {
            [[
               This project looks at improving VM performance. It considers aspects of parallelisation, program fuzzing, and crowd
               sourced optimisation.
            ]]
        }
    },    
}

return projects
