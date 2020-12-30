######jessica_neo4j_example.py######

from jessica_neo4j import start_neo4j
from jessica_neo4j import create_neo4j_session
from jessica_neo4j import ingest_knowledge_triplets_to_neo4j

start_neo4j(http_port = "5987", bolt_port = "4522")
neo4j_session = create_neo4j_session(bolt_port = "4522")

triplets = [
	{
		"subject":"1","subject_name":"ahemde","subject_type":"person",
		"object":"2","object_name":"mustafa","object_type":"person",
		"relation":"friend",
	}
]

ingest_knowledge_triplets_to_neo4j(triplets, neo4j_session)

######jessica_neo4j_example.py######