-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2015 at 12:44 AM
-- Server version: 5.6.27-0ubuntu1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donghuyin`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_admin`
--

CREATE TABLE IF NOT EXISTS `p_admin` (
  `id` int(3) NOT NULL,
  `mid` varchar(25) NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- Dumping data for table `p_admin`
--

INSERT INTO `p_admin` (`id`, `mid`, `password`, `username`) VALUES
(1, 'huyin', 'G00dG00dStudy', 'yin');

-- --------------------------------------------------------

--
-- Table structure for table `p_config`
--

CREATE TABLE IF NOT EXISTS `p_config` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE gbk_bin NOT NULL,
  `values` varchar(100) COLLATE gbk_bin NOT NULL,
  `introduction` tinytext COLLATE gbk_bin NOT NULL,
  `email` varchar(50) COLLATE gbk_bin NOT NULL,
  `github` varchar(20) COLLATE gbk_bin NOT NULL,
  `url` varchar(20) COLLATE gbk_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk COLLATE=gbk_bin;

--
-- Dumping data for table `p_config`
--

INSERT INTO `p_config` (`id`, `name`, `values`, `introduction`, `email`, `github`, `url`) VALUES
(1, 'Huyin Dong', 'Huyin', 'I am a graduate student, majoring in Computer Science. I like AngularJS and NodeJS.', 'donghuyin@gmail.com', 'dejorkoffe@gmail.com', 'imgs/a.png');

-- --------------------------------------------------------

--
-- Table structure for table `p_mylife`
--

CREATE TABLE IF NOT EXISTS `p_mylife` (
  `id` int(2) NOT NULL,
  `points` int(5) NOT NULL,
  `records` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_mylife`
--

INSERT INTO `p_mylife` (`id`, `points`, `records`) VALUES
(1, 1000, 'The first day to do the record.'),
(2, 1002, ''),
(3, 1006, ''),
(4, 1012, 'Good'),
(5, 1022, 'Awesome');

-- --------------------------------------------------------

--
-- Table structure for table `p_newsbase`
--

CREATE TABLE IF NOT EXISTS `p_newsbase` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(50) COLLATE gbk_bin NOT NULL,
  `author` varchar(25) COLLATE gbk_bin NOT NULL,
  `date` date NOT NULL,
  `abstract` text COLLATE gbk_bin NOT NULL,
  `lecture` int(11) NOT NULL,
  `week` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

--
-- Dumping data for table `p_newsbase`
--

INSERT INTO `p_newsbase` (`id`, `cid`, `title`, `author`, `date`, `abstract`, `lecture`, `week`) VALUES
(39, 51, 'Agent Architectures and Hierarchical Control', 'Huyin Dong', '2015-09-06', 'By a hierarchic system, or hierarchy, I mean a system that is composed of interrelated subsystems, each of the latter being in turn hierarchic in structure until we reach some lowest level of elementary subsystem.', 2, 2),
(38, 51, 'What is AI', 'Huyin Dong', '2015-09-06', 'Artificial intelligence, or AI, is the field that studies the synthesis and analy- sis of computational agents that act intelligently', 1, 2),
(41, 34, 'Merge Sort', 'Huyin Dong', '2015-09-06', 'Divide and Conquer', 3, 3),
(42, 34, 'Binary Tree', 'Huyin Dong', '2015-09-06', 'Three way to go through binary tree', 8, 8),
(43, 34, 'NodeList', 'Huyin Dong', '2015-09-05', 'LinkedList is a very useful data structure.', 4, 4),
(44, 34, 'Bubble Sort', 'Huyin Dong', '2015-08-19', 'Bubble Sort', 2, 2),
(45, 34, 'Counting Sort', 'Huyin Dong', '2015-09-05', 'Linear complexity', 4, 4),
(46, 34, 'Quick Sort', 'Huyin Dong', '2015-09-06', 'Divide and Conquer', 6, 6),
(47, 34, 'Queue', 'Huyin Dong', '2015-09-06', 'Data Structure - Queue', 7, 7),
(48, 34, 'Stack', 'Huyin Dong', '2015-09-06', 'Data Structure - Stack', 9, 9),
(49, 34, 'Graph', 'Huyin Dong', '2015-09-07', 'Data Structure - Graph', 9, 9),
(50, 34, 'Breadth First Search', 'Huyin Dong', '2015-09-07', 'Graph Traverse', 10, 10),
(51, 34, 'Depth First Search', 'Huyin Dong', '2015-09-08', 'Graph Traverse', 11, 11),
(52, 34, 'Prim', 'Huyin Dong', '2015-09-08', 'Minimum Spanning Tree', 12, 12),
(53, 53, 'Medium access control protocols', 'Huyin Dong', '2015-09-08', 'Controlling when to send a packet and when to listen for a packet are perhaps the two most important operations in a wireless network', 3, 3),
(54, 51, 'Constraint Satisfaction Problem', 'Huyin Dong', '2015-09-10', 'constraint satisfaction is the process of finding a solution to a set of constraints that impose conditions that the variables must satisfy.', 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `p_newsclass`
--

CREATE TABLE IF NOT EXISTS `p_newsclass` (
  `id` int(11) NOT NULL COMMENT '分类id',
  `f_id` int(11) NOT NULL COMMENT '父id',
  `name` varchar(25) COLLATE gbk_bin NOT NULL COMMENT '分类名称',
  `keyword` varchar(100) COLLATE gbk_bin NOT NULL COMMENT '关键字',
  `remark` varchar(100) COLLATE gbk_bin NOT NULL COMMENT '备注'
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

--
-- Dumping data for table `p_newsclass`
--

INSERT INTO `p_newsclass` (`id`, `f_id`, `name`, `keyword`, `remark`) VALUES
(53, 33, 'Arch for Wireless', '', ''),
(49, 0, 'Java', '', ''),
(24, 0, 'Mean.io', '', ''),
(56, 24, 'Mango', '', ''),
(27, 24, 'Angular', '', ''),
(52, 33, 'Computer Graphic', '', ''),
(57, 24, 'Express', '', ''),
(51, 33, 'Artificial Intell', '', ''),
(33, 0, 'Courses', '', ''),
(34, 33, 'Algorithms', '', ''),
(35, 33, 'Operating System', '', ''),
(58, 24, 'NodeJS', '', ''),
(59, 49, 'Hibernate', '', ''),
(60, 49, 'Spring', '', ''),
(62, 61, 'Basic', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `p_newscontent`
--

CREATE TABLE IF NOT EXISTS `p_newscontent` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) COLLATE gbk_bin NOT NULL,
  `content` text COLLATE gbk_bin NOT NULL,
  `remark` text COLLATE gbk_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk COLLATE=gbk_bin;

--
-- Dumping data for table `p_newscontent`
--

INSERT INTO `p_newscontent` (`id`, `keyword`, `content`, `remark`) VALUES
(38, 'AI, agent, environment, knowledge', '<p>1. <strong><span style="background-color:#FF0000;">Concepts</span></strong></p>\n\n<p><strong>AI</strong>:&nbsp;&nbsp;it is the field that studies the synthesis and analy-sis of computational agents that act intelligently.</p>\n\n<p>Agent : it&nbsp;is something that acts in an environment – it does something.&nbsp;Agents include worms, dogs,</p>\n\n<p>thermostats, airplanes, robots, humans, compa-nies, and countries.</p>\n\n<p>We judge an&nbsp;agent by its actions.&nbsp;An agent acts intelligently when :</p>\n\n<ul>\n	<li>what it does is appropriate for its circumstances and its goals,</li>\n	<li>it is flexible to changing environments and changing goals,</li>\n	<li>it learns from experience, and</li>\n	<li>it makes appropriate choices given its perceptual and computational limitations. An agent typically cannot observe the state of the world directly;<br />\n	it has only a finite memory and it does not have unlimited time to act.</li>\n</ul>\n\n<p><strong>Knowledge</strong> : it&nbsp;is the information about a domain that can be used to solve&nbsp;problems in that domain.&nbsp;</p>\n\n<p>A good representation scheme is a compromise among many competing<br />\nobjectives. A representation should be:&nbsp;</p>\n\n<ul>\n	<li>rich enough to express the knowledge needed to solve the problem.</li>\n	<li>as close to the problem as possible; it should be compact, natural, and main-<br />\n	tainable. It should be easy to see the relationship between the representation<br />\n	and the domain being represented, so that it is easy to determine whether<br />\n	the knowledge represented is correct. A small change in the problem should<br />\n	result in a small change in the representation of the problem.</li>\n	<li>amenable to efficient computation, which usually means that it is able to<br />\n	express features of the problem that can be exploited for computational gain<br />\n	and able to trade off accuracy and computation time.</li>\n	<li>able to be acquired from people, data and past experiences.</li>\n</ul>\n\n<p><strong>Optimal solution</strong> :&nbsp;An optimal solution to a problem is one that is the best so-<br />\nlution according to some measure of solution quality.</p>\n\n<p><strong>Satisficing solution </strong>:&nbsp;is one that is good&nbsp;enough according to some description of</p>\n\n<p>which solutions are adequate.&nbsp;</p>\n\n<p><strong>Approximately optimal solution</strong> : it&nbsp;is one whose measure of quality is close to the</p>\n\n<p>best that could theo-retically be obtained.</p>\n\n<p><strong>Probable solution</strong> :&nbsp;even though it may not ac-tually be a solution to the problem,</p>\n\n<p>is likely to be a solution.</p>\n\n<p><strong>Model</strong> :&nbsp;An agent can use physical symbol systems to model the world.&nbsp;All models are</p>\n\n<p>abstractions; they represent only part of&nbsp;the world and leave out many of the details.</p>\n\n<p>Choosing an appropriate level of abstraction is difficult because</p>\n\n<ul>\n	<li>a high-level description is easier for a human to specify and understand.</li>\n	<li>a low-level description can be more accurate and more predictive. Often<br />\n	high-level descriptions abstract away details that may be important for actually solving the problem.</li>\n	<li>the lower the level, the more difficult it is to reason with. This is because<br />\n	a solution at a lower level of detail involves more steps and many more<br />\n	possible courses of action exist from which to choose.</li>\n	<li>you may not know the information needed for a low-level description. For<br />\n	example, the delivery robot may not know what obstacles it will encounter<br />\n	or how slippery the floor will be at the time that it must decide what to do.</li>\n</ul>\n\n<p><strong>Reasoning</strong> : The manipulation of symbols to produce action.</p>\n\n<p><strong>Complexity</strong> : Agents acting in environments range in complexity from thermostats to companies</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;with multiple goals acting in competitive environments.&nbsp;</p>\n\n<p><strong>Modularity</strong> : the extent to which a system can be decomposed into interacting modules that can be understood separately.</p>\n', 'Notes for chapter 1'),
(39, 'Agent, Hierarchical Control', '<p><strong>2.1 Abstract:&nbsp;</strong></p>\n\n<p>This chapter presents ways to design agents in terms of hier-archical</p>\n\n<p>decompositions and ways that agents can be built, taking into account&nbsp;the</p>\n\n<p>knowledge that an agent needs to act intelligently.</p>\n\n<p><strong>2.2 Agent Systems</strong></p>\n\n<p>An agent system is made up of an agent and its environment. The agent<br />\nreceives stimuli from the environment and carries out actions in the environ-<br />\nment.<br />\nAn agent is made up of a body and a controller. The controller receives<br />\npercepts from the body and sends commands to the body.<br />\nA body includes sensors that convert stimuli into percepts and actuators<br />\nthat convert commands into actions.</p>\n\n<p>2.3&nbsp;<strong>Hierarchical Control</strong></p>\n\n<p>One way that you could imagine building an agent is to split the body into the</p>\n\n<p>sensors and a complex perception sys-tem that feeds a description of the world</p>\n\n<p>into a reasoning engine implementing a controller that, in turn, outputs commands</p>\n\n<p>to actuators. This turns out&nbsp;to be a bad architecture for intelligent systems. It is too&nbsp;slow, and it is difficult&nbsp;to reconcile the slow reasoning about complex, high-level goals.&nbsp;An alternative architecture is a hierarchy of controllers.&nbsp;Each layer sees the layers below&nbsp;it as a virtual body from which it gets&nbsp;percepts and to which it sends commands.</p>\n\n<p>In general, there can be multiple features passed from layer to layer and<br />\nbetween states at different times.</p>\n\n<p>There are three types of inputs to each layer at each time:</p>\n\n<ul>\n	<li>the features that come from the belief state, which are referred to as the re-<br />\n	membered or previous values of these features;</li>\n	<li>the features representing the percepts from the layer below in the hierarchy;<br />\n	and</li>\n	<li>the features representing the commands from the layer above in the<br />\n	hierarchy.</li>\n</ul>\n\n<p>There are three types of outputs from each layer at each time:</p>\n\n<ul>\n	<li>the higher-level percepts for the layer above,</li>\n	<li>the lower-level commands for the layer below, and</li>\n	<li>the next values for the belief-state features.&nbsp;</li>\n</ul>\n\n<p>&nbsp;</p>\n', 'This chapter discusses how an intelligent agent can perceive, reason, and act over time in an environment. In particular, it considers the internal struc- ture of an agent.'),
(40, 'ads', '<p><span style="color:#FF0000;">as</span></p>\n\n<pre>\n<code>package com.alg.basic;\n\nclass TreeNode{\n	private int key;\n	private TreeNode prnt;\n	private TreeNode lChd;\n	private TreeNode rChd;\n	public int getKey() {\n		return key;\n	}\n	public void setKey(int key) {\n		this.key = key;\n	}\n	public TreeNode getPrnt() {\n		return prnt;\n	}\n	public void setPrnt(TreeNode prnt) {\n		this.prnt = prnt;\n	}\n	public TreeNode getlChd() {\n		return lChd;\n	}\n	public void setlChd(TreeNode lChd) {\n		this.lChd = lChd;\n	}\n	public TreeNode getrChd() {\n		return rChd;\n	}\n	public void setrChd(TreeNode rChd) {\n		this.rChd = rChd;\n	}\n	public TreeNode(int key) {\n		super();\n		this.key = key;\n	}\n	@Override\n	public String toString() {\n		return "TreeNode [key=" + key + "]";\n	}\n	\n}\npublic class BinaryTree {\n	public static void main(String[] args){\n		int[] arr = new int[]{5,3,6,2,8,4,7,1};\n		BinaryTree bt = new BinaryTree(arr);\n		System.out.print("inorder: ");\n		bt.inorder_Tree_Walk(bt.getRoot());\n		System.out.println();\n		System.out.print("preorder: ");\n		bt.preorder_Tree_Walk(bt.getRoot());\n		System.out.println();\n		System.out.print("postorder: ");\n		bt.postorder_Tree_Walk(bt.getRoot());\n	}\n	\n	public TreeNode getRoot() {\n		return root;\n	}\n	public void setRoot(TreeNode root) {\n		this.root = root;\n	}\n\n	private TreeNode root;\n	public BinaryTree(int[] arr){\n	  for(int i : arr){\n		  this.addTreeNode(i);\n	  }\n	}\n	public void addTreeNode(int key){\n		TreeNode tn = new TreeNode(key);\n		if(root == null){\n			root = tn;\n		}else{\n			this.searchPos(root,tn);\n		}\n	}\n	public void searchPos(TreeNode p, TreeNode tn){\n		if(tn.getKey() &lt; p.getKey() ){\n			if(p.getlChd() == null){\n				p.setlChd(tn);\n				tn.setPrnt(p);\n			}else{\n				p = p.getlChd();\n				this.searchPos(p, tn);\n			}\n		}else{\n			if(p.getrChd() == null){\n				p.setrChd(tn);\n				tn.setPrnt(p);\n			}else{\n				p = p.getrChd();\n				this.searchPos(p, tn);\n			}\n		}\n	}\n	public void inorder_Tree_Walk(TreeNode tn){\n		if(tn != null){\n			this.inorder_Tree_Walk(tn.getlChd());\n			System.out.print(tn.getKey()+",");\n			this.inorder_Tree_Walk(tn.getrChd());	\n		}\n	\n	}\n	public void preorder_Tree_Walk(TreeNode tn){\n		if(tn != null){\n			System.out.print(tn.getKey()+",");\n			this.preorder_Tree_Walk(tn.getlChd());\n			this.preorder_Tree_Walk(tn.getrChd());\n		}\n	}\n	public void postorder_Tree_Walk(TreeNode tn){\n		if(tn != null){\n			this.postorder_Tree_Walk(tn.getlChd());\n			this.postorder_Tree_Walk(tn.getrChd());\n			System.out.print(tn.getKey()+",");\n		}\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', '123r'),
(41, 'Merge Sort', '<p>Merge Sort Codes in Java:</p>\n\n<pre>\n<code>package com.alg.basic;\n\npublic class MergeSort {\n	public static void main(String[] args){\n		MergeSort ms = new MergeSort();\n		int[] arr = new int[]{7,6,4,1,9,2,11,13,5,81,22,4,14,16,20,19};\n		ms.mergeSort(arr);\n		for(int m : arr){\n			System.out.print(m + ",");\n		}\n		System.out.println();\n	}\n	public void mergeSort(int[] arr){\n		this.sort(arr, 0, (arr.length-1));\n	}\n	public void sort(int[] arr, int p ,int r){\n		if(p&lt;r){\n			int q = (r+p)/2+1;									//q means the middle index\n			sort(arr,p,q-1);\n			sort(arr,q,r);\n			merge(arr,p,q,r);\n		}\n	}\n	public void merge(int[] arr, int p, int q, int r){\n		int n1 = q-p;\n		int n2 = r-q+1;\n		int[] L = new int[n1];									// array is divided into two parts\n		int[] R = new int[n2];									// each of them is given to L and R\n		for(int i = 0;i&lt;n1;i++){								\n			L[i] = arr[p+i];\n		}\n		for(int j = 0; j&lt;n2; j++){\n			R[j] = arr[q+j];\n		}\n		int i = 0;\n		int j = 0;\n		int k = 0;\n		while(i &lt; n1 &amp;&amp; j &lt; n2){								// merge two arrays in order\n			if(L[i]&lt;R[j]){\n				arr[k+p] = L[i];\n				i++;\n				k++;\n			}else{\n				arr[k+p] = R[j];\n				j++;\n				k++;\n			}\n		}\n			 while(i &lt; n1){								// one array is merged while another\n			    	arr[k+p] = L[i];							// one still has elements unmerged\n					i++;										// merge the rest of them to the original\n					k++;										// array\n			    }\n			    while(j &lt; n2){\n			    	arr[k+p] = R[j];\n			    	k++;\n					j++;\n			    }\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Nlgn'),
(42, 'Preorder, Inorder, Postorder', '<pre>\n<code>package com.alg.basic;\n\nclass TreeNode{\n	private int key;\n	private TreeNode prnt;\n	private TreeNode lChd;\n	private TreeNode rChd;\n	public int getKey() {\n		return key;\n	}\n	public void setKey(int key) {\n		this.key = key;\n	}\n	public TreeNode getPrnt() {\n		return prnt;\n	}\n	public void setPrnt(TreeNode prnt) {\n		this.prnt = prnt;\n	}\n	public TreeNode getlChd() {\n		return lChd;\n	}\n	public void setlChd(TreeNode lChd) {\n		this.lChd = lChd;\n	}\n	public TreeNode getrChd() {\n		return rChd;\n	}\n	public void setrChd(TreeNode rChd) {\n		this.rChd = rChd;\n	}\n	public TreeNode(int key) {\n		super();\n		this.key = key;\n	}\n	@Override\n	public String toString() {\n		return "TreeNode [key=" + key + "]";\n	}\n	\n}\npublic class BinaryTree {\n	public static void main(String[] args){\n		int[] arr = new int[]{5,3,6,2,8,4,7,1};\n		BinaryTree bt = new BinaryTree(arr);\n		System.out.print("inorder: ");\n		bt.inorder_Tree_Walk(bt.getRoot());\n		System.out.println();\n		System.out.print("preorder: ");\n		bt.preorder_Tree_Walk(bt.getRoot());\n		System.out.println();\n		System.out.print("postorder: ");\n		bt.postorder_Tree_Walk(bt.getRoot());\n	}\n	\n	public TreeNode getRoot() {\n		return root;\n	}\n	public void setRoot(TreeNode root) {\n		this.root = root;\n	}\n\n	private TreeNode root;\n	public BinaryTree(int[] arr){\n	  for(int i : arr){\n		  this.addTreeNode(i);\n	  }\n	}\n	public void addTreeNode(int key){\n		TreeNode tn = new TreeNode(key);\n		if(root == null){\n			root = tn;\n		}else{\n			this.searchPos(root,tn);\n		}\n	}\n	public void searchPos(TreeNode p, TreeNode tn){\n		if(tn.getKey() &lt; p.getKey() ){\n			if(p.getlChd() == null){\n				p.setlChd(tn);\n				tn.setPrnt(p);\n			}else{\n				p = p.getlChd();\n				this.searchPos(p, tn);\n			}\n		}else{\n			if(p.getrChd() == null){\n				p.setrChd(tn);\n				tn.setPrnt(p);\n			}else{\n				p = p.getrChd();\n				this.searchPos(p, tn);\n			}\n		}\n	}\n	public void inorder_Tree_Walk(TreeNode tn){\n		if(tn != null){\n			this.inorder_Tree_Walk(tn.getlChd());\n			System.out.print(tn.getKey()+",");\n			this.inorder_Tree_Walk(tn.getrChd());	\n		}\n	\n	}\n	public void preorder_Tree_Walk(TreeNode tn){\n		if(tn != null){\n			System.out.print(tn.getKey()+",");\n			this.preorder_Tree_Walk(tn.getlChd());\n			this.preorder_Tree_Walk(tn.getrChd());\n		}\n	}\n	public void postorder_Tree_Walk(TreeNode tn){\n		if(tn != null){\n			this.postorder_Tree_Walk(tn.getlChd());\n			this.postorder_Tree_Walk(tn.getrChd());\n			System.out.print(tn.getKey()+",");\n		}\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Binary Tree'),
(43, 'LinkedList', '<pre>\n<code>package com.alg.basic;\n\nclass Node1{\n	private String name;\n	private Node1 next;\n	public String getName() {\n		return name;\n	}\n	public void setName(String name) {\n		this.name = name;\n	}\n	public Node1 getNext() {\n		return next;\n	}\n	public void setNext(Node1 next) {\n		this.next = next;\n	}\n	public Node1(String name) {\n		super();\n		this.name = name;\n	}\n	@Override\n	public String toString() {\n		return this.name;\n	}\n	\n	\n}\n\npublic class NodeListWithRecurssion {\n		private Node1 header;\n		\n		public Node1 getHeader() {\n			return header;\n		}\n		public void setHeader(Node1 header) {\n			this.header = header;\n		}\n		public void addNode(Node1 node){\n			if(header == null){\n				this.header = node;\n			}else{\n				this.getLastNode(header).setNext(node);\n			}\n		}\n		public Node1 getLastNode(Node1 node){\n			if(node.getNext() == null){\n				return node;\n			}else{\n				return this.getLastNode(node.getNext());\n			}\n		}\n		\n		\n		@Override\n		public String toString() {\n			return "NodeListWithRecurssion [header=" + header + "]";\n		}\n\n		public void printNode(Node1 node){\n			if(node.getNext() == null){\n				System.out.print(node);\n			}else{\n				System.out.print(node+"==&gt;");\n				printNode(node.getNext());\n			}\n		}\n		public void print(){\n			printNode(header);\n		}\n		public static void main(String[] args){\n			Node1 n1 = new Node1("1");\n			Node1 n2 = new Node1("2");\n			Node1 n3 = new Node1("3");\n			Node1 n4 = new Node1("4");\n			NodeListWithRecurssion nlwr = new NodeListWithRecurssion();\n			nlwr.addNode(n1);\n			nlwr.addNode(n2);\n			nlwr.addNode(n3);\n			nlwr.addNode(n4);\n			System.out.println(nlwr);\n			nlwr.print();\n		}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Data Structure'),
(44, 'Bubble Sort', '<pre>\n<code>package com.alg.basic;\n\npublic class BubbleSort {\n	public static void main(String[] args){\n		int[] arr = new int[]{2,4,7,5,6,1,8,9};\n		new BubbleSort().bubble(arr);\n		for(int i : arr){\n			System.out.print(i+",");\n		}\n	}\n	public void bubble(int[] arr){\n		int len = arr.length;\n		int temp = 0;\n		for(int i = len-1;i&gt;=1;i--){\n			for(int j = len-2; j&gt;=0;j--){\n				if(arr[j+1]&lt;arr[j]){\n					temp = arr[j];\n					arr[j] = arr[j+1];\n					arr[j+1] = temp;\n				}\n			}\n		}\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'n2'),
(45, 'Counting Sort', '<pre>\n<code>package com.alg.basic;\n\npublic class CountingSort {\n	public static void main(String[] args){\n		CountingSort cs = new CountingSort();\n		int[] arr = new int[]{2,5,3,0,2,3,0,3};\n		arr = cs.countingSort(arr);\n		for(int i : arr){\n			System.out.print(i+",");\n		}\n	}\n	public int[] countingSort(int[] arr){\n		\n		int max = arr[0];\n		for(int i = 1;i&lt;arr.length;i++){\n			if(max&lt;arr[i]){\n				max = arr[i];\n			}\n		}\n		//get the biggest number in arr, max\n		int[] temp = new int[max+1];\n		//creating an array, which length is max+1\n		for(int i = 0; i&lt;arr.length;i++){\n			temp[arr[i]]++;\n		}\n		//counting the numbers in arr, in this example \n		for(int i = 1; i &lt; temp.length;i++){\n			temp[i] = temp[i]+temp[i-1];\n		}\n		// temp is gonna be [2,2,4,7,7,8]\n		int[] result = new int[arr.length];\n		for(int i = arr.length-1; i&gt;=0;i-- ){\n			result[temp[arr[i]]-1] = arr[i];\n			temp[arr[i]] = temp[arr[i]]-1;\n		}\n	/*\n	 * I think this is somewhat hard to understand of this part.\n	 * The process is traversal the arr, and the final position is \n	 * in the temp, for example, traversal from the end \n	 * 3, in the temp, 3 is mapping to 7, so it should be in the 7th\n	 * position in the final arr, then 7-1, because the next 3 is gonna\n	 * be at 7-1 position. The next number is 0, it''s mapping to 2, so\n	 * its final position is 2nd, then 2-1, means the next 2 is in the \n	 * 1st position \n	 */\n		return result;\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Counting Sort'),
(46, 'Sort, Partition', '<pre>\n<code>package com.alg.basic;\n	\n		public class QuickSort {\n			public static void main(String[] args){\n				int[] arr1 = new int[]{2,8,7,1,3,5,6,4};\n				int[] arr = new int[]{4,3,7,1,2,8,5,15,13,12,18,15,33};\n				new QuickSort().qkSort(arr);\n				for(int i : arr){\n					System.out.print(i+",");\n				}\n			}\n			public void qkSort(int[] arr){\n				this.sort(arr, 0, arr.length-1);\n			}\n			public void sort(int[] arr, int p, int r){\n				if(p&lt;r){\n					int q = this.partition(arr, p, r);\n					this.sort(arr, p, q-1);\n					this.sort(arr, q+1, r);\n				}\n			}\n			public int partition(int[] arr, int p, int r){\n				int i = p-1;\n				int j = p;\n				int temp = 0;\n				int x = arr[r];\n				for(;j&lt;r;j++){\n					if(arr[j] &lt; x){\n						i++;\n						temp = arr[j];\n						arr[j] = arr[i];\n						arr[i] = temp;\n					}\n				}\n				temp = arr[r];\n				arr[r] = arr[i+1];\n				arr[i+1] = temp;\n				return i+1;\n			}\n		}</code></pre>\n\n<p>&nbsp;</p>\n', 'nlgn'),
(47, 'enQueue, deQueue, peek', '<pre>\n<code>package com.alg.basic;\n\npublic class Queue&lt;T&gt; {\n	private class Node{\n		private T current;\n		private Node next;\n		public T getCurrent() {\n			return current;\n		}\n		public void setCurrent(T current) {\n			this.current = current;\n		}\n		public Node getNext() {\n			return next;\n		}\n		public void setNext(Node next) {\n			this.next = next;\n		}\n		public Node() {\n			super();\n		}\n		@Override\n		public String toString() {\n			return "Node [current=" + current + ", next=" + next + "]";\n		}\n	}\n	\n	@Override\n	public String toString() {\n		return "Queue [head=" + head + ", tail=" + tail + ", size=" + size\n				+ "]";\n	}\n	private Node head;\n	private Node tail;\n	private int size;\n	public boolean isEmpty(){\n		return head==null;\n	}\n	public void enQueue(T t){\n		Node node = new Node();\n		node.setCurrent(t);\n		if(this.isEmpty()){\n			this.head = node;\n			this.tail = node;\n			size++;\n		}else{\n		this.tail.setNext(node);\n		this.tail = node;\n		size++;\n		}\n	}\n	public int size(){\n		return this.size;\n	}\n	public T deQueue(){\n		if(this.isEmpty()){\n			throw new RuntimeException("Queue underflow bbb");\n		}else{\n			Node node = this.head;\n			this.head = this.head.getNext();\n			size--;\n			return node.getCurrent();\n		}\n	}\n	public Node temp = this.head;\n	public void search(){\n		\n		this.isInQueue(temp.getCurrent());\n		\n	}\npublic boolean isInQueue(T v){\n		for(int i = 0;i&lt;size;i++){\n			if(v == temp.getCurrent()){\n				return true;\n			}else{\n				temp = temp.getNext();\n				continue;\n			}\n		}\n		return false;\n	}\n	public T peek(){\n		if(this.isEmpty()){\n			throw new RuntimeException("Queue underflow aaa");\n		}else{\n		return this.head.getCurrent();\n		}\n	}\n	public static void main(String[] args){\n		Queue&lt;String&gt; q = new Queue&lt;String&gt;();\n		String t1 = "1";\n		String t2 = "2";\n		String t3 = "3";\n		String t4 = "4";\n		String t5 = "5";\n		q.enQueue(t1);\n		q.enQueue(t2);\n		q.enQueue(t3);\n		q.enQueue(t4);\n		q.enQueue(t5);\n		System.out.println(q);\n		System.out.println(q.peek());\n		}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Data Structure'),
(48, 'Push, Pop, Peek', '<pre>\n<code>package com.alg.basic;\n\npublic class Stack&lt;T&gt;{\n	private class Node{\n		private T current;\n		private Node next;\n		\n		public T getCurrent() {\n			return current;\n		}\n		public void setCurrent(T current) {\n			this.current = current;\n		}\n		public Node getNext() {\n			return next;\n		}\n		public void setNext(Node next) {\n			this.next = next;\n		}\n		public Node() {\n			super();\n		}\n		@Override\n		public String toString() {\n			return "Node [current=" + current + ", next=" + next + "]";\n		}\n		\n	}\n	private Node head;\n	private int len;\n	\n\n	private int getLen() {\n		return len;\n	}\n     \n\n\n	public Stack() {\n		super();\n	}\n    public boolean isEmpty(){\n    	return head == null;\n    }\n	public int size(){\n		return this.getLen();\n	}\n	public void push(T t){\n		Node temp = this.head;\n		Node node = new Node();\n		node.setCurrent(t);\n		this.head = node;\n		node.setNext(temp);\n		len++;\n	}\n	public T pop(){\n		if(this.isEmpty()){\n			throw new RuntimeException("Stack underflow asdf");\n		}else{\n		T t = this.head.getCurrent();\n		this.head = this.head.getNext();\n		len--;\n		return t;\n		}\n	}\n	public T peek(){\n		if(this.isEmpty()){\n			throw new RuntimeException("Stack underflow11111111");\n		}else{\n		return this.head.getCurrent();\n		}\n	}\n	\n	@Override\n	public String toString() {\n		return "Stack [head=" + head + ", len=" + len + "]";\n	}\n\n	public static void main(String[] args){\n		Stack&lt;String&gt; stack = new Stack&lt;String&gt;();\n		String t1 = "1";\n		String t2 = "2";\n		String t3 = "3";\n		String t4 = "4";\n		stack.push(t1);\n		stack.push(t2);\n		stack.push(t3);\n		stack.push(t4);\n		System.out.println(stack);\n		while(stack.size()&gt;0){\n			System.out.println("Head is "+stack.peek()+", Length is "+ stack.size());\n			stack.pop();\n		}\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Data Structure'),
(49, 'addEdge, addVertex, searchVertex', '<pre>\n<code>package com.alg.basic;\n\nimport java.util.ArrayList;\n\nclass Vertex{\n	private String name;\n	private ArrayList&lt;Vertex&gt; next = new ArrayList&lt;Vertex&gt;();\n	private int key;\n	private Vertex parent;\n	\n	public Vertex getParent() {\n		return parent;\n	}\n	public void setParent(Vertex parent) {\n		this.parent = parent;\n	}\n	public int getKey() {\n		return key;\n	}\n	public void setKey(int key) {\n		this.key = key;\n	}\n	public ArrayList&lt;Vertex&gt; getNext() {\n		return next;\n	}\n	public void setNext(ArrayList&lt;Vertex&gt; next) {\n		this.next = next;\n	}\n\n	public String getName() {\n		return name;\n	}\n\n	public void setName(String name) {\n		this.name = name;\n	}\n	public Vertex(String name) {\n		super();\n		this.name = name;\n		this.key = Integer.MAX_VALUE;\n	}\n	@Override\n	public String toString() {\n		return this.getName();\n	}\n}\nclass Edge{\n	private Vertex start;\n	private Vertex end;\n	private int weight;\n	public Edge(Vertex start, Vertex end, int weight) {\n		super();\n		this.start = start;\n		this.end = end;\n		this.weight = weight;\n	}\n	public Vertex getStart() {\n		return start;\n	}\n	public void setStart(Vertex start) {\n		this.start = start;\n	}\n	public Vertex getEnd() {\n		return end;\n	}\n	public void setEnd(Vertex end) {\n		this.end = end;\n	}\n	public int getWeight() {\n		return weight;\n	}\n	public void setWeight(int weight) {\n		this.weight = weight;\n	}\n}\npublic class Graph {\n	private ArrayList&lt;Vertex&gt; vertices = new ArrayList&lt;Vertex&gt;();\n	private ArrayList&lt;Edge&gt; edges= new ArrayList&lt;Edge&gt;();\n	public ArrayList&lt;Vertex&gt; getVertices() {\n		return vertices;\n	}\n	public void setVertices(ArrayList&lt;Vertex&gt; vertices) {\n		this.vertices = vertices;\n	}\n	public ArrayList&lt;Edge&gt; getEdges() {\n		return edges;\n	}\n	public void setEdges(ArrayList&lt;Edge&gt; edges) {\n		this.edges = edges;\n	}\n	private int[][] gra = null;\n	\n	\n	public int[][] getGra() {\n		return gra;\n	}\n	public void setGra(int[][] gra) {\n		this.gra = gra;\n	}\n	public Graph(int size) {\n		super();\n		this.gra = new int[size][size];\n	}\n	public void addVertex(String name){\n		Vertex vertex = new Vertex(name);\n		this.vertices.add(vertex);\n	}\n	public void addEdge(String start, String end, int weight){\n		Vertex startVertex = vertices.get(this.searchVertex(start));\n		Vertex endVertex = vertices.get(this.searchVertex(end));\n		startVertex.getNext().add(endVertex);\n		endVertex.getNext().add(startVertex);\n		Edge edge = new Edge(startVertex,endVertex,weight);	\n		edges.add(edge);\n		this.mapGrap(edge);\n	}\n	private void mapGrap(Edge e){\n		Vertex startVertex = e.getStart();\n		Vertex endVertex = e.getEnd();\n		\n		int i = this.searchVertex(startVertex.getName());\n		int j = this.searchVertex(endVertex.getName());\n		gra[i][j] = e.getWeight();\n		gra[j][i] = e.getWeight();\n	}\n	public int searchVertex(String name){\n		  int i = 0;\n		for(; i&lt;vertices.size();i++){\n			if(vertices.get(i).getName().equals(name)){\n				return i;\n			}\n	}\n		i = -1;\n		return i;\n}\n	public void printGrap(){\n		for(int i = 0 ; i&lt; vertices.size();i++){\n			System.out.print("  "+vertices.get(i).getName());\n		}\n		System.out.println();\n		for(int i = 0 ; i&lt;vertices.size();i++){\n			System.out.print(vertices.get(i).getName()+" ");\n			for(int j = 0; j&lt;vertices.size();j++){\n				System.out.print(gra[i][j]+"  ");\n			}\n			System.out.println();\n		}\n		for(Vertex v : vertices){\n			System.out.println(v+":"+v.getNext());\n		}\n	}\n	public static void main(String[] args){\n	\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Graph has Edge and vertex'),
(50, 'getAdjacent, Queue, isVisited, setVisited', '<pre>\n<code>package com.alg.basic;\n\nimport java.util.ArrayList;\n\npublic class Breadth_First_Search {\n	private Graph graph;					\n	private Vertex current;						//current vertex which is also the peek of stack\n	private Vertex root;						//set root to begin with					   //pointer in the adjacent which is a ArrayList\n	private ArrayList&lt;Vertex&gt; adjacent = null;\n	private Queue&lt;Vertex&gt; queue = new Queue&lt;Vertex&gt;();\n	public boolean[] visited = null;\n	public Breadth_First_Search(Graph graph, String rootName) {		\n		super();\n		this.graph = graph;\n		for (Vertex v : graph.getVertices()) { // get root vertex in the graph\n			if (v.getName().equals(rootName)) {\n				this.root = v;\n				break;\n			}\n		}\n		this.current = root;\n		visited = new boolean[graph.getVertices().size()];\n	}\n	public boolean isVisited(String name){			//check if the vertex has been visited\n		int t = graph.searchVertex(name);\n		return this.visited[t];\n	}\n	public void setVisited(Vertex v){					//set visited of a vertex\n		this.visited[graph.searchVertex(v.getName())] = true;\n	}\n	public void BFS() {		\n			this.queue.enQueue(current);\n			this.setVisited(current);\n			this.getAdjacent();\n		}\n	public void getAdjacent() {							//traverse the graph \n		while(!this.queue.isEmpty()){\n			this.current = this.queue.peek();\n				System.out.print(this.queue.deQueue()+"--&gt;");\n				adjacent = this.current.getNext();\n				for(Vertex v : adjacent){\n					if(!this.isVisited(v.getName())){\n						this.queue.enQueue(v);\n						this.setVisited(v);		\n					}\n				}\n				this.getAdjacent();\n				}\n		\n			}		\n	public static void main(String[] args) { // test\n		Graph graph = new Graph(11);\n		graph.addVertex("A");\n		graph.addVertex("B");\n		graph.addVertex("C");\n		graph.addVertex("D");\n		graph.addVertex("E");\n		graph.addVertex("F");\n		graph.addVertex("G");\n		graph.addVertex("H");\n		graph.addVertex("I");\n		graph.addVertex("J");\n		graph.addVertex("K");\n		graph.addEdge("A", "B", 4);\n		graph.addEdge("A", "F", 3);\n		graph.addEdge("B", "C", 5);\n		graph.addEdge("C", "D", 2);\n		graph.addEdge("D", "H", 6);\n		graph.addEdge("D", "E", 1);\n		graph.addEdge("E", "F", 5);\n		graph.addEdge("F", "G", 1);\n		graph.addEdge("G", "I", 2);\n		graph.addEdge("G", "J", 2);\n		graph.addEdge("F", "K", 2);\n		Breadth_First_Search df = new Breadth_First_Search(graph, "E");\n		df.BFS();\n	}\n\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'E+V'),
(51, 'getAdjacent, setVisited, isVisited, Stack, isAllVisited', '<pre>\n<code>package com.alg.basic;\n\nimport java.util.ArrayList;\n\npublic class Depth_First_Search {\n	private Graph graph;					\n	private Vertex current;						//current vertex which is also the peek of stack\n	private Vertex root;						//set root to begin with\n	private int i = 0;						    //pointer in the adjacent which is a ArrayList\n	ArrayList&lt;Vertex&gt; adjacent = null;\n	private Stack&lt;Vertex&gt; stack = new Stack&lt;Vertex&gt;();\n	public boolean[] visited = null;\n	public Depth_First_Search(Graph graph, String rootName) {		\n		super();\n		this.graph = graph;\n		for (Vertex v : graph.getVertices()) { // get root vertex in the graph\n			if (v.getName().equals(rootName)) {\n				this.root = v;\n				break;\n			}\n		}\n		this.current = root;\n		visited = new boolean[graph.getVertices().size()];\n	}\n	public boolean isVisited(String name){			//check if the vertex has been visited\n		int t = graph.searchVertex(name);\n		return this.visited[t];\n	}\n	public boolean isAllVisited(ArrayList&lt;Vertex&gt; list){	//check if all the vertices in the adjacent is visited\n		for(Vertex v : list){\n			if(this.visited[graph.searchVertex(v.getName())] == false){\n				return false;\n			}\n		}\n		return true;\n	}\n	public void setVisited(Vertex v){					//set visited of a vertex\n		this.visited[graph.searchVertex(v.getName())] = true;\n	}\n	public void DFS() {						\n			this.stack.push(current);					//initialize the stack\n			this.setVisited(current);		\n			this.getAdjacent();\n		}\n	public void getAdjacent() {							//traverse the graph \n		while(!this.stack.isEmpty()){\n				adjacent = this.current.getNext();		\n				if(this.isAllVisited(adjacent)){\n					System.out.print(this.stack.pop()+"--&gt;");\n					if(stack.isEmpty()){\n						break;\n					}\n					current = stack.peek();\n				}else if(!this.isVisited(adjacent.get(i).getName())){\n					this.current = adjacent.get(i);\n					this.stack.push(current);\n					this.setVisited(current);\n					i = 0;\n				}else{\n					i++;\n				}\n				this.getAdjacent();\n				}\n			}		\n	public static void main(String[] args) { // test\n		Graph graph = new Graph(11);\n		graph.addVertex("A");\n		graph.addVertex("B");\n		graph.addVertex("C");\n		graph.addVertex("D");\n		graph.addVertex("E");\n		graph.addVertex("F");\n		graph.addVertex("G");\n		graph.addVertex("H");\n		graph.addVertex("I");\n		graph.addVertex("J");\n		graph.addVertex("K");\n		graph.addEdge("A", "B", 4);\n		graph.addEdge("A", "F", 3);\n		graph.addEdge("B", "C", 5);\n		graph.addEdge("C", "D", 2);\n		graph.addEdge("D", "H", 6);\n		graph.addEdge("D", "E", 1);\n		graph.addEdge("E", "F", 5);\n		graph.addEdge("F", "G", 1);\n		graph.addEdge("G", "I", 2);\n		graph.addEdge("G", "J", 2);\n		graph.addEdge("F", "K", 2);\n		graph.printGrap();\n		Depth_First_Search df = new Depth_First_Search(graph, "A");\n		df.DFS();\n	}\n\n}</code></pre>\n\n<p>&nbsp;</p>\n', '2V+E'),
(52, 'PriorityQueue, Prim', '<pre>\n<code>package com.alg.basic;\n\nimport java.util.ArrayList;\nimport java.util.Comparator;\nimport java.util.PriorityQueue;\n/* For implementing prim, we need to add key and parent variable to \n * vertex class.\n*/\npublic class Prim {\n	Comparator&lt;Vertex&gt; com = new Comparator&lt;Vertex&gt;(){               //define comparator of vertex \n		public int compare(Vertex o1, Vertex o2) {					//so that it can sort as key value\n			if(o1.getKey()&lt;o2.getKey()){\n				return -1;\n			}\n			if(o1.getKey()&gt;o2.getKey()){\n				return 1;\n			}\n			return 0;\n		};\n	};\n	private PriorityQueue&lt;Vertex&gt; pq = new PriorityQueue&lt;Vertex&gt;(11,com);\n	public void MST_Prim(Graph g, String name){                      //graph,and vertex name\n		Vertex start = g.getVertices().get(g.searchVertex(name));    \n		start.setKey(0);                                                     \n	    for(Vertex v : g.getVertices()){                             // add vertices into PQ\n	    	pq.offer(v);\n	    }\n		while(!pq.isEmpty()){\n			Vertex u = pq.poll();\n			if(u.getParent()!=null){\n			System.out.println(u.getParent()+"--&gt;"+u);                \n			}\n			ArrayList&lt;Vertex&gt; adjacent = u.getNext();\n			for(Vertex v : adjacent){\n				int i = g.searchVertex(u.getName());\n				int j = g.searchVertex(v.getName());\n				int weight = g.getGra()[i][j];\n				if(pq.contains(v) &amp;&amp; weight &lt; v.getKey()){\n					v.setParent(u);\n					v.setKey(weight);\n					ArrayList&lt;Vertex&gt; t = new ArrayList&lt;Vertex&gt;();\n	/*One problem is that the priority Queue does not have the method\n	 *  described as in the book can extract the minimum value even after\n	 *  you have updated the value in the Q. So I have to do codes below,\n	 *  looking silly, I would make an improve after I get a better mehod.\n	 */\n					while(!pq.isEmpty()){                      \n						t.add(pq.poll());\n					}\n					for(Vertex ver : t){\n						pq.add(ver);\n					}\n					\n				}\n			}\n		}\n	}\n	public static void main(String[] args){\n		Graph graph = new Graph(11);		\n		graph.addVertex("A");\n		graph.addVertex("B");\n		graph.addVertex("C");\n		graph.addVertex("D");\n		graph.addVertex("E");\n		graph.addVertex("F");\n		graph.addEdge("A", "B", 3);\n		graph.addEdge("A", "E", 2);\n		graph.addEdge("A", "F", 5);\n		graph.addEdge("B", "F", 7);\n		graph.addEdge("B", "C", 4);\n		graph.addEdge("C", "D", 7);\n		graph.addEdge("C", "F", 4);\n		graph.addEdge("D", "F", 6);\n		graph.addEdge("D", "E", 5);\n		graph.addEdge("E", "F", 2);\n		Prim p = new Prim();\n		p.MST_Prim(graph, "A");\n	}\n}</code></pre>\n\n<p>&nbsp;</p>\n', 'Minimum Spanning Tree'),
(53, 'Wireless, Hub, Network', '<p><strong>Nomadic Access</strong></p>\n\n<ul>\n	<li>link LAN hub &amp; mobile data terminal\n	<ul>\n		<li>aptop or notepad computer</li>\n		<li>enable employee to transfer data from portable computer to server</li>\n	</ul>\n	</li>\n	<li>also useful in extended environment such as campus or cluster of buildings\n	<ul>\n		<li>users move around with portable computers</li>\n		<li>may wish access to servers on wired LAN</li>\n	</ul>\n	</li>\n</ul>\n\n<p><strong>Wireless LAN Characteristics</strong></p>\n\n<p>Differences from wired link ….</p>\n\n<ul>\n	<li>decreased signal strength: radio signal attenuates as it propagates through matter (path loss)</li>\n	<li>interference from other sources: standardized wireless network frequencies (e.g., 2.4 GHz) shared by other devices (e.g., phone); devices (motors) interfere as well</li>\n	<li>multipath propagation: radio signal reflects off objects ground, arriving ad destination at slightly different times</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>Distortion effects : None-line-of-sight paths</p>\n\n<p>Because of reflection,scattering,..., radiocommunication is not limited to direct line of sight communication.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Wireless Signal strength in a multi-path environment</p>\n\n<ul>\n	<li>Brighter color = stronger signal</li>\n	<li>Obviously, simple(quadratic) free space attenuation formula is not sufficient to capture these effects.</li>\n</ul>\n\n<p>&nbsp;</p>\n', 'Notes for Chapter 5'),
(54, 'CSP, Backtracking, Consistent', '<p><strong>5.1&nbsp;CONSTRAINT SATISFACTION PROBLEMS</strong></p>\n\n<p>Formally speaking, a constraint satisfaction problem (or CSP) is defined by a set of vari- CONSTRAINT SATISFACTION PROBLEM VARIABLES ables, X1, X2, . . . , Xn, and a set of constraints, C1, C2, . . . , Cm. Each variable Xi has a CONSTRAINTS nonempty domain Di of possible values. Each constraint Ci involves some subset of the DOMAIN VALUES variables and specifies the allowable combinations of values for that subset. A state of the problem is defined by an assignment of valuesto some or all of the variables, {Xi = vi , Xj = ASSIGNMENT vj , . . .}. An assignment that does not violate any constraints is called a consistent or legal CONSISTENT assignment. A complete assignment is one in which every variable is mentioned, and a solution to a CSP is a complete assignment that satisfies all the constraints. Some CSPs also require a solution that maximizes an objective function.</p>\n\n<p><strong>5.2 Example</strong></p>\n\n<p dir="ltr">&nbsp;</p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">q1. Search </font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">q2. Fill-in the Blank</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">q3. CSP</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">q4. Multiple-Choice</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">q5. True/False</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">q6. Short Answer</font></font></font></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">There are 7 people on the course staff: Belle, Donald, Fawn, Jake, Kirby, Mulan, and Nala. Each of them is responsible to work with Prof. Wellman on one question. (But a question could end up having more than one staff person, or potentially zero staff assigned to it.) However, the staff are pretty quirky and want the following constraints to be satisfied:</font></font></font></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(i) Donald(D) will not work on a question together with Jake (J).</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(ii) Kirby (K) must work on either &nbsp;Search, Fill-in the Blanks or CSPs</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(iii) Mulan (M) is very odd, so she can only contribute to an odd-numbered question.</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(iv) Nala (N) must work on a question that’s before Mulan’s (M)’s question.</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(v) Kirby (K) must work on a question that’s before Donald (D)’s question</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(vi) Belle (B) does not like grading exams, so she must work on True/False.</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(vii) Jake (J) must work on a question that’s after Nala (N)’s question.</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(viii) If Belle (B) is to work with someone, it cannot be with Nala (N).</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(ix) Nala (N) cannot work on question 6.</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(x) Fawn (F) cannot work on questions 4, 5, or 6</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(xi) Donald (D) cannot work on question 5.</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">(xii) Donald (D) must work on a question before Fawn (F)’s question</font></font></font></p>\n\n<p><font color="#000000"><font face="Arial"><font size="2">We will model this problem as a constraint satisfaction problem (CSP). Our variables correspond to each of the staff members, J, F, N, D, M, B, K, and the domains are the questions 1, 2, 3, 4, 5, 6. After applying the unary constraints, what are the resulting domains of each variable? (The second grid with variables and domains is provided as a back-up in case you mess up on the first one.)</font></font></font></p>\n\n<p><strong><font color="#000000"><font face="Arial"><font size="2">Solution: We can sure that B is 5, and then K must before D and D before F, meanwhile, F must do 1,2,3. So we can decide that K for 1, D for 2, F for 3. N must before J, N must before M. So we can determine that M for 5, N for 4 and J for 6. This is one solution for the solution set. We can still think about others.</font></font></font></strong></p>\n\n<p><strong><font color="#000000"><font face="Arial"><font size="2">5.3&nbsp;</font></font></font>BACKTRACKING SEARCH FOR CSPS</strong></p>\n\n<p>The term backtracking search is used for a depth-first search that chooses values for BACKTRACKING SEARCH one variable at a time and backtracks when a variable has no legal values left to assign.</p>\n\n<pre>\n<code>function BACKTRACKING-SEARCH(csp) returns a solution, or failure\nreturn RECURSIVE-BACKTRACKING({ }, csp)\nfunction RECURSIVE-BACKTRACKING(assignment, csp) returns a solution, or failure\nif assignment is complete then return assignment\nvar ← SELECT-UNASSIGNED-VARIABLE(VARIABLES[csp], assignment, csp)\nfor each value in ORDER-DOMAIN-VALUES(var , assignment, csp) do\nif value is consistent with assignment according to CONSTRAINTS[csp] then\nadd {var = value} to assignment\nresult ← RECURSIVE-BACKTRACKING(assignment, csp)\nif result 6= failure then return result\nremove {var = value} from assignment\nreturn failure</code></pre>\n\n<p>A simple backtracking algorithm for constraint satisfaction problems. The algorithm is modeled on the recursive depth-first search of Chapter 3. The functions SELECT-UNASSIGNED-VARIABLE and ORDER-DOMAIN-VALUES can be used to implement the general-purpose heuristics discussed in the text.</p>\n', 'CONSTRAINT SATISFACTION PROBLEMS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_admin`
--
ALTER TABLE `p_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_config`
--
ALTER TABLE `p_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_mylife`
--
ALTER TABLE `p_mylife`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_newsbase`
--
ALTER TABLE `p_newsbase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_newsclass`
--
ALTER TABLE `p_newsclass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p_mylife`
--
ALTER TABLE `p_mylife`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `p_newsbase`
--
ALTER TABLE `p_newsbase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `p_newsclass`
--
ALTER TABLE `p_newsclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
