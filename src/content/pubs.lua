local pubs = {
    {
        type="inproceedings",
        bibtex="leather_",
        title="Predicting and Optimizing Image Compression",
        authors={ "Alexander Murashko", "Hugh Leather", "John Thomson" },
        booktitle = "Proceedings of the 24th ACM International Conference on Multimedia",
        series = "MM '16",
        year = "2016", month="October", day="15",
        location = "Amsterdam, The Netherlands",
        publisher = "ACM",
        address = "New York, NY, USA",
        abstract = [[
            Image compression is a core task for mobile devices, social media and cloud storage backend services. Key evaluation criteria
            for compression are: the quality of the output, the compression ratio achieved and the computational time (and energy)
            expended. Predicting the effectiveness of standard compressors like libjpeg and WebP on a novel image is challenging, and often
            leads to non-optimal compression. This paper presents a machine learning-based technique to accurately model the outcome of
            image compression for arbitrary new images in terms of quality and compression ratio, without requiring significant additional
            computational time and energy. Using this model, we can actively adapt the aggressiveness of compression on a per image basis
            to accurately fit user requirements, leading to a more optimal compression.
        ]]
    },
    {
        type="inbook",
        bibtex="leather_lambdacalulus_wf16",
        authors={ "Hugh Leather", "Janne Irgens" },
        editor="Lindley, Sam and McBride, Conor and Trinder, Phil and Sannella, Don",
        title="The Lambda Calculus: Practice and Principle ",
        booktitle="A List of Successes That Can Change the World: Essays Dedicated to Philip Wadler on the Occasion of His 60th Birthday",
        day="25", month="March", year="2016",
        publisher="Springer International Publishing",
        address="Cham",
        pages="201--206",
        isbn="978-3-319-30936-1",
        doi="10.1007/978-3-319-30936-1_11",
        url="http://dx.doi.org/10.1007/978-3-319-30936-1_11",
        files = {
            { name = "paper(pdf)", path = "2016_lambdacalculus_wf.pdf" },
        },
        abstract = [[
            The Lambda Calculus has perplexed students of computer science for millennia, rendering many incapable of understanding even
            the most basic precepts of functional programming. This paper gently introduces the core concepts to the lay reader, assuming
            only a minimum of background knowledge in category theory, quantum chromodynamics, and paleomagnetism. In addition, this paper
            goes on to its main results, showing how the Lambda Calculus can be used to easily prove the termination of Leibniz’ Hailstone
            numbers for all n > 0, to show that matrix multiplication is possible in linear time, and to guarantee Scottish independence.
        ]]
    },    
    {
        type = "inproceedings",
        title = "Towards Collaborative Performance Tuning of Algorithmic Skeletons",
        bibtex = "leather_collaborativetuningskeletons_adapt2016",
        authors = { "Christopher Cummins", "Pavlos Petoumenos", "Michel Stewer", "Hugh Leather" },
        year = "2016",
        month = "January",
        location = "Prague, Czech Republic",
        booktitle = "Proceedings of the International Workshop on High-Level Programming for Heterogeneous and Hierarchical Parallel Systems (HLPGPU 2016)",
        files = {
            { name = "paper(pdf)", path = "2016_collabskeletontuning_hlpgpu.pdf" },
        },
        abstract = [[
            The physical limitations of microprocessor design have forced the industry towards increasingly heterogeneous designs to
            extract performance. This trend has not been matched with adequate software tools, leading to a growing disparity between the
            availability of parallelism and the ability for application developers to exploit it. Algorithmic skeletons simplify parallel
            programming by providing high-level, reusable patterns of computation.
            
            Achieving performant skeleton implementations is a difficult task; skeleton authors must attempt to anticipate and tune for a
            wide range of architectures and use cases. This results in implementations that target the general case and cannot provide the
            performance advantages that are gained from tuning low level optimization parameters. Autotuning combined with machine learning
            offers promising performance benefits in these situations, but the high cost of training and lack of available tools limits the
            practicality of autotuning for real world programming. We believe that performing autotuning at the level of the skeleton
            library can overcome these issues.
            
            In this work, we present OmniTune — an extensible and distributed framework for dynamic autotuning of optimization parameters
            at runtime. OmniTune uses a client-server model with a flexible API to support machine learning enabled autotuning. Training
            data is shared across a network of cooperating systems, using a collective approach to performance tuning.
            
            We demonstrate the practicality of OmniTune in a case study using the algorithmic skeleton library SkelCL. By automatically
            tuning the workgroup size of OpenCL Stencil skeleton kernels, we show that that static tuning across a range of GPUs and
            programs can achieve only 26% of the optimal performance, while OmniTune achieves 92% of this maximum, equating to an average
            5.65× speedup. OmniTune achieves this without introducing a significant runtime overhead, and enables portable, cross-device
            and cross-program tuning.
        ]]    
    },
    {
        type = "inproceedings",
        title = "Iterative Compilation on Mobile Devices",
        bibtex = "leather_iterativecompilationmobile_adapt2016",
        authors = { "Paschalis Mpeis", "Pavlos Petoumenos", "Hugh Leather" },
        year = "2016",
        month = "January",
        location = "Prague, Czech Republic",
        booktitle = "Proceedings of the 6th International Workshop on Adaptive Self-tuning Computing Systems (ADAPT 2016)",
        files = {
            { name = "paper(pdf)", path = "2016_iterativecompilationmobile_adapt.pdf" },
        },
        abstract = [[
            The abundance of poorly optimized mobile applications coupled
            with their increasing centrality in our digital lives make
            a framework for mobile app optimization an imperative.
            While tuning strategies for desktop and server applications
            have a long history, it is difficult to adapt them for use on
            mobile devices.
            
            Reference inputs which trigger behavior similar to a mobile
            application’s typical are hard to construct. For many
            classes of applications the very concept of typical behavior
            is nonexistent, each user interacting with the application
            in very different ways. In contexts like this, optimization
            strategies need to evaluate their effectiveness against real
            user input, but doing so online runs the risk of user dissatisfaction
            when suboptimal optimizations are evaluated.
            
            In this paper we present an iterative compiler which employs
            a novel capture and replay technique in order to collect
            real user test cases and use it later to evaluate different
            transformations offline. The proposed mechanism identifies
            and stores only the set of memory pages needed to replay
            the most heavily used functions of the application. At idle
            and charging periods, this minimal state is combined with
            different binaries of the application, each one build with different
            optimizations enabled. Replaying the targeted functions
            allows us to evaluate the effectiveness of each set of
            optimizations for the actual way the user interacts with the
            application.
            
            For the BEEBS benchmark suite, our approach was able
            to improve performance of hot functions by up to 57%, while
            keeping the slowdown experienced by the user on average at
            0.8%. By focusing only on heavily used functions, we are
            able to conserve storage space by between two and three
            orders of magnitude compared to typical capture and replay
            implementations.
        ]]
    },
    {
        type = "inproceedings",
        title = "Autotuning OpenCL Workgroup Size for Stencil Patterns",
        bibtex = "leather_autotuneopenclstencil_adapt2016",
        authors = { "Christopher Cummins", "Pavlos Petoumenos", "Michel Stewer", "Hugh Leather" },
        year = "2016",
        month = "January",
        location = "Prague, Czech Republic",
        booktitle = "Proceedings of the 6th International Workshop on Adaptive Self-tuning Computing Systems (ADAPT 2016)",
        files = {
            { name = "paper(pdf)", path = "2016_autotuneopenclstencil_adapt.pdf" },
        },
        abstract = [[
            Selecting an appropriate workgroup size is critical
            for the performance of OpenCL kernels, and requires
            knowledge of the underlying hardware, the data being
            operated on, and the implementation of the kernel.
            This makes portable performance of OpenCL programs
            a challenging goal, since simple heuristics and statically
            chosen values fail to exploit the available performance.
            To address this, we propose the use of machine learning enabled
            autotuning to automatically predict workgroup
            sizes for stencil patterns on CPUs and multi-GPUs.
            
            We present three methodologies for predicting workgroup
            sizes. The first, using classifiers to select the optimal
            workgroup size. The second and third proposed
            methodologies employ the novel use of regressors for
            performing classification by predicting the runtime of
            kernels and the relative performance of different workgroup
            sizes, respectively. We evaluate the effectiveness
            of each technique in an empirical study of 429 combinations
            of architecture, kernel, and dataset, comparing
            an average of 629 different workgroup sizes for each. We
            find that autotuning provides a median 3.79× speedup
            over the best possible fixed workgroup size, achieving
            94% of the maximum performance.
        ]]
    },
    {
        type = "inproceedings",
        title = "On the Inference of User Paths from Anonymized Mobility Data",
        bibtex = "leather_deanonymise_eurosp2016",
        authors = { "Galini Tsoukaneri", "George Theodorakopoulos", "Hugh Leather", "Mahesh K. Marina" },
        year = "2016",
        month = "March",
        location = "Saarbrücken, Germany",
        booktitle = "Proceedings of the 1st IEEE European Symposium on Security and Privacy (EuroS&amp;P 2016)",
        files = {
            { name = "paper(pdf)", path = "2016_deanonymise_eurosp.pdf" },
        },
        abstract = [[
            Using the plethora of apps on smartphones and
            tablets entails giving them access to different types of privacy
            sensitive information, including the device’s location. This can
            potentially compromise user privacy when app providers share
            user data with third parties (e.g., advertisers) for monetization
            purposes. In this paper, we focus on the interface for data
            sharing between app providers and third parties, and devise
            an attack that can break the strongest form of the commonly
            used anonymization method for protecting the privacy of users.
            More specifically, we develop a mechanism called Comber
            that given completely anonymized mobility data (without any
            pseudonyms) as input is able to identify different users and
            their respective paths in the data. Comber exploits the observation
            that the distribution of speeds is typically similar among
            different users and incorporates a generic, empirically derived
            histogram of user speeds to identify the users and disentangle
            their paths. Comber also benefits from two optimizations that
            allow it to reduce the path inference time for large datasets. We
            use two real datasets with mobile user location traces (Mobile
            Data Challenge and GeoLife) for evaluating the effectiveness
            of Comber and show that it can infer paths with greater than
            90% accuracy with both these datasets.
        ]]
    },
    {
        type = "inproceedings",
        title = "Power Capping: What Works, What Does Not",
        bibtex = "leather_powercapping_icpads2015",
        authors = { "Pavlos Petoumenos", "Lev Mukhanov", "Zheng Wang", "Hugh Leather", "Dimitrios Nikolopoulos" },
        year = "2015", month = "December",
        location = "Melbourne, Australia",
        booktitle = "Proceedings of the 21st IEEE International Conference on Parallel and Distributed Systems (ICPADS), 2015",
        abstract=[[
            Peak power consumption is the first order design constraint of data centers. Though peak power consumption is rarely, if ever,
            observed, the entire data center facility must prepare for it, leading to inefficient usage of its resources. The most prominent
            way for addressing this issue is to limit the power consumption of the data center IT facility far below its theoretical peak
            value. Many approaches have been proposed to achieve that, based on the same small set of enforcement mechanisms, but there has
            been no corresponding work on systematically examining the advantages and disadvantages of each such mechanism. In the absence
            of such a study, it is unclear what is the optimal mechanism for a given computing environment, which can lead to unnecessarily
            poor performance if an inappropriate scheme is used. This paper fills this gap by comparing for the first time five widely used
            power capping mechanisms under the same hardware/software setting. We also explore possible alternative power capping mechanisms
            beyond what has been previously proposed and evaluate them under the same setup. We systematically analyze the strengths and
            weaknesses of each mechanism, in terms of energy efficiency, overhead, and predictable behavior. We show how these mechanisms
            can be combined in order to implement an optimal power capping mechanism which reduces the slowdown compared to the most widely
            used mechanism by up to 88%. Our results provide interesting insights regarding the different trade-offs of power capping
            techniques, which will be useful for designing and implementing highly efficient power capping in the future.
        ]],
        files = {
            { name = "paper(pdf)", path = "leather_powercapping_icpads2015.pdf" },
        }
    },

    {
        type = "inproceedings",
        title = "Application of Domain-aware Binary Fuzzing to Aid Android Virtual Machine Testing",
        bibtex = "leather_dalvikfuzzing_vee2015",
        authors = { "Stephen Kyle", "Hugh Leather", "Bjorn Franke", "Dave Butcher", "Stuart Monteith" },
        year = "2015",
        month = "March",
        location = "Istanbul, Turkey",
        booktitle = "Proceedings of the 2015 International Conference on Virtual Execution Environments (VEE'15)",
        files = {
            { name = "paper(pdf)", path = "2015_dalvik-fuzzing_vee.pdf" },
        },
        abstract=[[
            The development of a new application virtual machine (VM), like the creation of any complex piece of software, is a bug-prone
            process. In version 5.0, the widely-used Android operating system has changed from the Dalvik VM to the newly-developed ART VM
            to execute Android applications. As new iterations of this VM are released, how can the developers aim to reduce the number of
            potentially security-threatening bugs that make it into the final product? In this paper we combine domain-aware binary fuzzing
            and differential testing to produce DEXFUZZ, a tool that exploits the presence of multiple modes of execution within a VM to
            test for defects. These modes of execution include the interpreter and a runtime that executes ahead-of-time compiled code. We
            find and present a number of bugs in the in-development version of ART in the Android Open Source Project. We also assess
            DEXFUZZ’s ability to highlight defects in the experimental version of ART released in the previous version of Android, 4.4,
            finding 189 crashing programs and 15 divergent programs that indicate defects after only 5,000 attempts.
        ]]
    },
    {
        type = "inproceedings",
        title = "Intelligent Heuristic Construction with Active Learning",
        bibtex = "leather_activelearning_cpc2015",
        authors = { "William F Ogilvie", "Pavlos Petoumenos", "Zheng Wang", "Hugh Leather" },
        year = "2015", month = "January",
        location = "London, England",
        booktitle = "Proceedings of Compilers for Parallel Computing (CPC) 2015",
    },

    {
        type = "inproceedings",
        title = "Measuring QoE of Interactive Workloads and Characterising Frequency Governors on Mobile Devices.",
        bibtex = "leather_interactiveworkloads_iiswc2014",
        authors = { "Volker Seeker", "Pavlos Petoumenos", "Hugh Leather", "Bjorn Franke" },
        year = "2014",
        month = "October",
        location = "Raleigh, North Carolina, USA",
        booktitle = "IISWC '14: Proceedings of the 2014 IEEE International Symposium on Workload Characterization (BEST PAPER!)",
        files = {
            { name = "paper (pdf)", path = "2014_interactiveworkloads_iiswc.pdf" },
            { name = "presentation (pptx)", path = "2014_interactiveworkloads_iiswc.pptx" },
            { name = "video for presentation - sample workload", path = "2014_interactiveworkloads_iiswc-sample_workload.avi" },
            { name = "video for presentation - auto replay", path = "2014_interactiveworkloads_iiswc-auto_replay.avi" },
        },
        abstract=[[
            Mobile computing devices such as smartphones and tablets have become tightly integrated with many people’s life, both at work
            and at home. Users spend large amounts of time interacting with their mobile device and demand an excellent user experience in
            terms of responsiveness, whilst simultaneously expecting a long battery life between charging cycles. Frequency governors,
            responsible for increasing or decreasing the CPU clock frequency depending on the current workload and external events, try to
            balance the two contrasting goals of high performance and low energy consumption. However, despite their critical role in
            providing energy efficiency it is difficult to measure the effectiveness of frequency governors in an interactive environment.
            In this paper we develop a novel methodology for creating repeatable, fully automated, realistic, workloads that can accurately
            measure time lag in interactive applications resulting from non-optimally selected operating frequencies. We also introduce a
            new metric capturing the user experience for different ANDROID frequency governors. We evaluate interactive workloads to
            demonstrate how our approach enables us to automatically record and replay sequences of user interactions for different system
            configurations. We demonstrate that none of the available ANDROID frequency governors performs particularly well, but leave
            substantial room for improvement. We show that energy savings of up to 27% are possible, whilst delivering a user experience
            that is better than that provided by the standard ANDROID frequency governor. We also show that it is possible to save 47%
            energy with performance that is indistinguishable from permanently running the CPU at the highest frequency.
        ]]
    },

    {
        type = "inproceedings",
        title = "Fast Automatic Heuristic Construction Using Active Learning",
        bibtex = "leather_activelearning_lcpc2014",
        authors = { "William F. Ogilvie", "Pavlos Petoumenos", "Zheng Wang", "Hugh Leather" },
        year = "2014",
        month = "September",
        day = "15",
        location = "Hillsboro, Oregan, USA",
        booktitle = "LCPC '14: Proceedings of the Workshop on Languages and Compilers for Parallel Computing",
        files = {
            { name = "paper (pdf)", path = "2014_activelearning_lcpc.pdf" },
        },
        abstract=[[
            Building effective optimization heuristics is a challenging task which often takes developers several months if not years to
            complete. Predictive modelling has recently emerged as a promising solution, automatically constructing heuristics from
            training data. However, obtaining this data can take months per platform. This is becoming an ever more critical problem and if
            no solution is found we shall be left with out of date heuristics which cannot extract the best performance from modern
            machines.

            In this work, we present a low-cost predictive modelling approach for automatic heuristic construction which significantly
            reduces this training overhead. Typically in supervised learning the training instances are randomly selected to evaluate
            regardless of how much useful information they carry. This wastes effort on parts of the space that contribute little to the
            quality of the produced heuristic. Our approach, on the other hand, uses active learning to select and only focus on the most
            useful training examples.

            We demonstrate this technique by automatically constructing a model to determine on which device to execute four parallel
            programs at differing problem dimensions for a representative Cpu–Gpu based heterogeneous system. Our methodology is remarkably
            simple and yet effective, making it a strong candidate for wide adoption. At high levels of classification accuracy the average
            learning speed-up is 3x, as compared to the state-of-the-art.
        ]]
    },
    {
        type = "article",
        bibtex = "leather_autofeatgen_taco14",
        title = "Automatic Feature Generation for Machine Learning--based Optimising Compilation",
        authors = { "Hugh Leather", "Edwin Bonilla", "Michael O'Boyle" },
        journal = "ACM Trans. Archit. Code Optim.",
        issue_date = "February 2014",
        volume = "11",
        number = "1",
        month = "Feb",
        year = "2014",
        issn = "1544-3566",
        pages = "14:1--14:32",
        articleno = "14",
        numpages = "32",
        url = "http://doi.acm.org/10.1145/2536688",
        doi = "10.1145/2536688",
        acmid = "2536688",
        publisher = "ACM",
        address = "New York, NY, USA",
        keywords = "Feature generation, genetic programming, program optimisation",
        files = {
            { name = "paper(acm)", path = "http://dl.acm.org/citation.cfm?id=2536688" },
        },
        abstract=[[
            Recent work has shown that machine learning can automate and in some cases outperform handcrafted compiler optimisations.
            Central to such an approach is that machine learning techniques typically rely upon summaries or features of the program. The
            quality of these features is critical to the accuracy of the resulting machine learned algorithm; no machine learning method
            will work well with poorly chosen features. However, due to the size and complexity of programs, theoretically there are an
            infinite number of potential features to choose from. The compiler writer now has to expend effort in choosing the best
            features from this space. This article develops a novel mechanism to automatically find those features that most improve the
            quality of the machine learned heuristic. The feature space is described by a grammar and is then searched with genetic
            programming and predictive modelling. We apply this technique to loop unrolling in GCC 4.3.1 and evaluate our approach on a
            Pentium 6. On a benchmark suite of 57 programs, GCCs hard-coded heuristic achieves only 3% of the maximum performance
            available, whereas a state-of-the-art machine learning approach with hand-coded features obtains 59%. Our feature generation
            technique is able to achieve 76% of the maximum available speedup, outperforming existing approaches.
        ]]
    },
    {
        type = "article",
        title = "Auto-tuning Parallel Skeletons",
        bibtex = "leather_autotuneparallelskeletons_ppl12",
        authors = { "Alexander Collins", "Christian Fensch", "Hugh Leather" },
        journal = "Parallel Processing Letters (PPL)",
        year = "2012",
        month = "June",
        volume = "22",
        number = "2",
        pages = "1240005-1--16",
        files = {
            { name = "paper (pdf)", path = "2012_autotuneparallelskeletons_ppl.pdf" },
        },
        abstract=[[
            Parallel skeletons are a structured parallel programming abstraction that provide pro- grammers with a predefined set of
            algorithmic templates that can be combined, nested and parameterized with sequential code to produce complex programs. The
            implemen- tation of these skeletons is currently a manual process, requiring human expertise to choose suitable implementation
            parameters that provide good performance. This paper presents an empirical exploration of the optimization space of the
            FastFlow parallel skele- ton framework. We performed this using a Monte Carlo search of a random subset of the space, for a
            representative set of platforms and programs. The results show that the space is program and platform dependent, non-linear,
            and that automatic search achieves a significant average speedup in program execution time of 1:6x over a human expert. An
            exploratory data analysis of the results shows a linear dependence between two of the parameters, and that another two
            parameters have little effect on performance. These properties are then used to reduce the size of the space by a factor of 6,
            reducing the cost of the search. This provides a starting point for automatically optimizing parallel skeleton programs without
            the need for human expertise, and with a large improvement in execution time compared to that achievable using human expert
            tuning.
        ]]
    },
    {
        type = "inproceedings",
        title = "Efficiently Parallelizing Instruction Set Simulation of Embedded Multi-Core Processors Using Region-based Just-in-Time Dynamic Binary Translation",
        bibtex = "leather_paralleljit_lctes12",
        authors = { "Stephen Kyle", "Igor Bohm", "Bjorn Franke", "Hugh Leather", "Nigel Topham" },
        year = "2012",
        month = "June",
        day = "12",
        location = "Beijing, China",
        booktitle = "LCTES '12: Proceedings of the ACM SIGPLAN/SIGBED 2009 Conference on Languages, Compilers, and Tools for Embedded Systems",
        files = {
            { name = "paper (pdf)", path = "2012_paralleljit_lctes.pdf" },
        },
        abstract=[[
            Embedded systems, as typified by modern mobile phones, are already seeing a drive toward using multi-core processors. The
            number of cores will likely increase rapidly in the future. Engineers and researchers need to be able to simulate systems, as
            they are expected to be in a few generations time, running simulations of many-core devices on today's multi-core machines.
            These requirements place heavy demands on the scalability of simulation engines, the fastest of which have typically evolved
            from just-in-time (Jit) dynamic binary translators (Dbt).

            Existing work aimed at parallelizing Dbt simulators has focused exclusively on trace-based Dbt, wherein linear execution
            traces or perhaps trees thereof are the units of translation. Region-based Dbt simulators have not received the same attention
            and require different techniques than their trace-based cousins.

            In this paper we develop an innovative approach to scaling multi-core, embedded simulation through region-based Dbt. We
            initially modify the Jit code generator of such a simulator to emit code that does not depend on a particular thread with its
            thread-specific context and is, therefore, thread-agnostic. We then demonstrate that this thread-agnostic code generation is
            comparable to thread-specific code with respect to performance, but also enables the sharing of Jit-compiled regions between
            different threads. This sharing optimisation, in turn, leads to significant performance improvements for multi-threaded
            applications. In fact, our results confirm that an average of 76\% of all Jit-compiled regions can be shared between 128
            threads in representative, parallel workloads. We demonstrate that this translates into an overall performance improvement by
            1.44x on average and up to 2.40x across 12 multi-threaded benchmarks taken from the Splash-2 benchmark suite, targeting our
            high-performance multi-core Dbt simulator for embedded Arc processors running on a 4-core Intel host machine.

        ]]
    },
    {
        type = "inproceedings",
        title = "Optimization Space Exploration of the FastFlow Parallel Skeleton Framework",
        bibtex = "leather_opt-expl-skeltons_hlpgpu12",
        authors = { "Alexander Collins", "Christian Fensch", "Hugh Leather" },
        year = "2012",
        month = "January",
        day = "23",
        location = "Paris, France",
        booktitle = "HLPGPU '12: Proceedings of High-Level Programming for Heterogeneous and Hierarchical Parallel Systems",
        files = {
            { name = "paper (pdf)", path = "2012_skeltons_hlpgpu.pdf" },
        },
        abstract=[[
            Parallel skeletons are a structured parallel programming abstrac- tion that provide programmers with a predefined set of
            algorithmic templates that can be combined, nested and parametrized with se- quential code to produce complex programs. The
            implementation of these skeletons is currently a manual process, requiring human expertise to choose suitable implementation
            parameters that pro- vide good performance. This paper presents an empirical explo- ration of the optimization space of the
            FastFlow parallel skeleton framework. We performed this using a Monte Carlo search of a ran- dom subset of the space, for a
            representative set of platforms and programs. The results show that the space is program and platform dependent, non-linear,
            and that automatic search achieves a signif- icant average speedup in program execution time of 1.6× over a human expert. An
            exploratory data analysis of the results shows a linear dependence between two of the parameters, and that another two
            parameters have little effect on performance. These properties are then used to reduce the size of the space by a factor of 6,
            re- ducing the cost of the search. This provides a starting point for au- tomatically optimizing parallel skeleton programs
            without the need for human expertise, and with a large improvement in execution time compared to that achievable using human
            expert tuning.
        ]]
    },
    {
        type = "inproceedings",
        title = "Raced Profiles: Efficient Selection of Competing Compiler Optimizations",
	    bibtex = "leather_racedprofiles_lctes09",
	    authors = { "Hugh Leather", "Michael O'Boyle", "Bruce Worton" },
	    year = "2009",
	    month = "June",
	    day = "25-28",
	    location = "Dublin, Ireland",
	    booktitle = "LCTES '09: Proceedings of the ACM SIGPLAN/SIGBED 2009 Conference on Languages, Compilers, and Tools for Embedded Systems",
        files = {
	        { name = "paper (pdf)", path = "2009_racedprofiles_lctes.pdf" },
	        { name = "slides (open office)", path = "2009_racedprofiles_lctes.odp" },
        },
        abstract=[[
            Many problems in embedded compilation require one set of optimizations to be selected over another based on run time
            performance. Self-tuned libraries, iterative compilation and machine learning techniques all compare multiple compiled program
            versions. In each, program versions are timed to determine which has the best performance. The program needs to be run multiple
            times for each version because there is noise inherent in most performance measurements. The number of runs must be enough to
            compare different versions, despite the noise, but executing more than this will waste time and energy. The compiler writer
            must either risk taking too few runs, potentially getting incorrect results, or taking too many runs increasing the time for
            their experiments or reducing the number of program versions evaluated. Prior works choose constant size sampling plans where
            each compiled version is executed a fixed number of times without regard to the level of noise.<br/> In this paper we develop a
            sequential sampling plan which can automatically adapt to the experiment so that the compiler writer can have both confidence
            in the results and also be sure that no more runs were taken than were needed. We show that our system is able to correctly
            determine the best optimization settings with between 76% and 87% fewer runs than needed by a brute force, constant sampling
            size approach.We also compare our approach to JavaSTATS(10); we needed 77% to 89% fewer runs than it needed.
        ]]
    },

    {
        type = "inproceedings",
        title = "Automatic Feature Generation for Machine Learning Based Optimizing Compilation",
        bibtex = "leather_autofeatgen_cgo09",
        authors = { "Hugh Leather", "Edwin Bonilla", "Michael O'Boyle" },
        year = "2009",
        month = "March",
        location = "Seattle, United States of America",
        booktitle = "CGO '09: Proceedings of the International Symposium on Code Generation and Optimization",
        files = {
            { name = "paper (pdf)", path = "2009_autofeatures_cgo.pdf" },
            { name = "slides (open office)", path = "2009_autofeatures_cgo.odp" },
            { name = "slides no animation (pdf)", path = "2009_autofeatures_cgo.no-annimation.pdf" },
        },
        abstract=[[
            Recent work has shown that machine learning can automate and in some cases outperform hand crafted compiler optimizations.
            Central to such an approach is that machine learning techniques typically rely upon summaries or <i>features</i> of the
            program. The quality of these features is critical to the accuracy of the resulting machine learned algorithm; no machine
            learning method will work well with poorly chosen features. However, due to the size and complexity of programs, theoretically
            there are an infinite number of potential features to choose from. The compiler writer now has to expend effort in choosing the
            best features from this space. This paper develops a novel mechanism to automatically find those features which most improve
            the quality of the machine learned heuristic. The feature space is described by a grammar and is then searched with genetic
            programming and predictive modeling. We apply this technique to loop unrolling in GCC 4.3.1 and evaluate our approach on a
            Pentium 6. On a benchmark suite of 57 programs, GCC's hard-coded heuristic achieves only 3% of the maximum performance
            available, while a state of the art machine learning approach with hand-coded features obtains 59%. Our feature generation
            technique is able to achieve 76% of the maximum available speedup, outperforming existing approaches.
        ]]
    },
				

    {
        type = "inproceedings",
        title = "MILEPOST GCC: machine learning based research compiler",
        bibtex = "leather_milepostgcc_gccsum08",
        authors = { "Grigori Fursin", "Cupertino Miranda", "Olivier Temam", "Mircea Namolaru", "Elad Yom-Tov", "Ayal Zaks", "Bilha Mendelson", "Phil Barnard", "Elton Ashton", "Eric Courtois", "Francois Bodin", "Edwin Bonilla", "John Thomson", "Hugh Leather", "Chris Williams", "Michael O'Boyle" },
        booktitle = "Proceedings of the GCC Developers' Summit",
        year = "2008",
        month = "June",
        location = "Ottawa, Canada",
        files = {
            { name = "paper (pdf)", path = "2008_milepostgcc_gccsummit.pdf" },
        },
        abstract=[[
            Tuning hardwired compiler optimizations for rapidly evolving hardware makes porting an optimizing compiler for each new
            platform extremely challenging. Our radical approach is to develop a modular, extensible, self-optimizing compiler that
            automatically learns the best optimization heuristics based on the behavior of the platform. In this paper we describe MILEPOST
            GCC, a machine-learning-based compiler that automatically adjusts its optimization heuristics to improve the execution time,
            code size, or compilation time of specific programs on different architectures. Our preliminary experimental results show that
            it is possible to considerably reduce execution time of the MiBench benchmark suite on a range of platforms entirely
            automatically.
        ]]
    },

    {
        type = "inproceedings",
        title = "Automatic Feature Generation for Setting Compilers Heuristics",
        bibtex = "leather_autofeatgen_smart08",
        authors = { "Hugh Leather", "Elad Yom-Tov", "Mircea Namolaru", "Ari Freund" },
        year = "2008",
        month = "January",
        booktitle = "SMART'08: 2nd Workshop on Statistical and Machine learning approaches to ARchitectures and compilaTion",
        location = "Göteborg, Sweden",
        files = {
            { name = "paper (pdf)", path = "2008_autofeatures_smart.pdf" },
            { name = "slides (open office)", path = "2008_autofeatures_smart.odp" },
        },
        abstract=[[
            Heuristics in compilers are often designed by manually analyzing sample programs. Recent advances have successfully applied
            machine learning to automatically generate heuristics. The typical format of these approaches reduces the input loops,
            functions or programs to a finite vector of features. A machine learning algorithm then learns a mapping from these features to
            the desired heuristic parameters. Choosing the right features is important and requires expert knowledge since no machine
            learning tool will work well with poorly chosen features.<br/> This paper introduces a novel mechanism to generate features.
            Grammars describing languages of features are defined and from these grammars sentences are randomly produced. The features are
            then evaluated over input data and computed values are given to machine learning tools.<br/> We propose the construction of
            domain specific feature languages for different purposes in different parts of the compiler. Using these feature languages,
            complex, machine generated features are extracted from program code. Using our observation that some functions can benefit from
            setting different compiler options, while others cannot, we demonstrate the use of a decision tree classifier to automatically
            identify the former using the automatically generated features.<br/> We show that our method outperform human generated
            features on problems of loop unrolling and phase ordering, achieving a statistically significant decrease in run-time compared
            to programs compiled using GCC’s heuristics.
        ]]
    },

    {
        type = "inproceedings",
        title = "Emergency Evacuation using Wireless Sensor Networks",
        bibtex = "leather_evac_lcn07",
		authors = { "Barnes M", "Leather H", "Arvind D K" },
		booktitle = "Proceedings of the 32nd IEEE Conference on Local Computer Networks (LCN 2007) - Volume 00",
		year = "2007",
        files = {
		    { name = "paper (pdf)", path = "2007_evac_lcn.pdf" },
        },
		abstract=[[
            This paper presents a distributed algorithm to direct evacuees to exits through arbitrarily complex building layouts in
            emergency situations. The algorithm finds the safest paths for evacuees taking into account predictions of the relative
            movements of hazards, such as fires, and evacuees. The algorithm is demonstrated on a 64 node wireless sensor network test
            platform and in simulation. The results of simulations are shown to demonstrate the navigation paths found by the algorithm.
		]]
    },

    {
        type = "phdthesis",
        bibtex = "leather_phdthesis_10",
        authors = { "Hugh Leather" },
        title = "Machine Learning in Compilers",
        school = "School of Informatics, University of Edinburgh",
        year = "2010",
        files = {
            { name = "thesis (pdf)", path="2011_thesis.pdf" }
        }
    },
    
	{
        type = "talk",
        title = "How to Give a Research Presentation",
	    location = "Glasgow, Scotland",
	    year = "2012", month = "June", day = "21",
		venue = "SICSA Conference 2012",
        files = {
		    { name = "slides (open office)", path = "2012_how-to-do-a-conference-presentation-sicsa.odp" },
		    { name = "slides (pdf)", path = "2012_how-to-do-a-conference-presentation-sicsa.pdf" },
        }
    },
	{
        type = "talk",
        title = "Machine Learning, Compilers and Mobile",
	    location = "St.Andrews, Scotland",
	    year = "2012", month = "May", day = "15",
		venue = "Department of Computer Science",
        files = {
		    { name = "slides (open office)", path = "2012_machinelearningcompilersandmobile.odp" },
		    { name = "slides (pdf)", path = "2012_machinelearningcompilersandmobile.pdf" },
        }
    },
	{
        type = "talk",
        title = "Machine Learning, Compilers and Mobile",
	    location = "Manchester, Scotland",
	    year = "2012", month = "February", day = "29",
		venue = "Department of Computer Science",
        files = {
		    { name = "slides (open office)", path = "2012_machinelearningcompilersandmobile.odp" },
		    { name = "slides (pdf)", path = "2012_machinelearningcompilersandmobile.pdf" },
        }
    },
	{
        type = "talk",
        title = "How to Give a Research Presentation",
	    location = "Firbush, Scotland",
	    year = "2011", month = "October", day = "21",
		venue = "PhD Induction 2011",
        files = {
		    { name = "slides (open office)", path = "2011_how-to-do-a-conference-presentation-sicsa.odp" },
		    { name = "slides (pdf)", path = "2011_how-to-do-a-conference-presentation-sicsa.pdf" },
        }
    },
	{
        type = "talk",
        title = "How to Give a Research Presentation",
	    location = "Edinburgh, Scotland",
	    year = "2011", month = "May", day = "24",
		venue = "SICSA Conference 2011",
        files = {
		    { name = "slides (open office)", path = "2011_how-to-do-a-conference-presentation-sicsa.odp" },
		    { name = "slides (pdf)", path = "2011_how-to-do-a-conference-presentation-sicsa.pdf" },
        }
    },
	{
        type = "talk",
        title = "Machine Learning in Compilers",
	    location = "Austin, Texas, USA",
	    year = "2009", month = "May", day = "27",
		venue = "ACES, University of Texas",
        files = {
		    { name = "slides (open office)", path = "2009_mlincompilers_riceandut.odp" },
        }
    },
	{
        type = "talk",
        title = "Machine Learning in Compilers",
	    location = "Houston, Texas, USA",
	    year = "2009", month = "May", day = "26",
		venue = "Rice University",
        files = {        
		    { name = "slides (open office)", path = "2009_mlincompilers_riceandut.odp" },
        }
    },
	{
        type = "talk",
        title = "Machine Learning in Compilers",
	    location = "Mountain View, California, USA",
	    year = "2009", month = "May", day = "21",
		venue = "Google Technical Talks",
        files = {
		    { name = "slides (open office)", path = "2009_mlincompilers_google.odp" },
        }
    },
	{
        type = "talk",
        title = "Learning Compilers for Configurable Processors",
	    location = "Seoul, S. Korea",
	    year = "2008", month = "June", day = "16-17",
		venue = "Korea-EU Cooperation Forum on ICT",
        files = {
		    { name = "slides (pdf)", path = "2008_ict_seoul.pdf" },
        }
    },
}
return pubs
