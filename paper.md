---
title: 'nbaR - R client library for the Netherlands Biodiversity API'
tags:
  - biodiversity
  - web service
  - R
  - client library
authors:
 - name: Hannes Hettling
   affiliation: 1
 - name: Rutger Aldo Vos
   orcid: 0000-0001-9254-7318
   affiliation: 1
affiliations:
 - name: Naturalis Biodiversity Center, Leiden, The Netherlands
   index: 1
date: 1 April 2019
bibliography: paper.bib
---

# Summary

## The Netherlands Biodiversity API

The Netherlands Biodiversity API (NBA) facilitates access to the
Natural History Collection at Naturalis Biodiversity Center. Next to
museum specimen records and metadata, access to taxonomic
classification and nomenclature, to geographical information, and to
multimedia files is provided. By using the powerful Elasticsearch
engine, the NBA facilitates searching for collection- and biodiversity
data in near real-time. Furthermore, by incorporating information from
taxonomic databases, taxonomic name resolution can be accomplished
with the NBA. Persistent Uniform Resource Identifiers (PURLs) ensure
that each specimen accessible via the NBA is represented by a citeable
unambiguous web reference. Access to our data is provided via a
RESTful interface and via several clients, such as the
[BioPortal](http://bioportal.naturalis.nl/), a web application for
browsing biodiversity data that is served by the NBA.  For more
information about the NBA, please see our
[detailed documentation](http://docs.biodiversitydata.nl/).

## R access

The R programming language is established as a common tool in
scientific research, with growing adoption by researchers in
biodiversity research.  Hence, to ease the access to the NBA for
researchers, we developed this R client.
