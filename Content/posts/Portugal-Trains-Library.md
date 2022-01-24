---
date: 2022-01-09 18:45
description: A Swift Library to query the Infraestruturas de Portugal (IP) API.
tags: projects, library, swift
---
# Swift Library - Portugal Trains

In the process of rebuilding my App Portfolio, I’ve been rewriting some abandoned apps I have. The first app in my sight is called redE - Comboios de Portugal.

This app allowed the users to check the time tables of trains in a given train station in *almost* real time.

# The API

This library is in the core of the app’s functionality. It what allows to search for the train stations, get said stations time tables, and in the future will also allow to check the time table per train.

The API however is not documented at all. It’s open in the IP’s [website](https://www.infraestruturasdeportugal.pt), but there’s no documentation, and no assurance that it will keep working in the future - but we work with what we have.

# Architecture

I tried to keep the library as simple as possible. There’s one main object that is exposed, ```StationService``` and it has both synchronous and asynchronous methods to get the relevant data. There either return a ```Result.Type``` or a model representing the API data.

The returned objects are all part of the ```StationService``` simply because I like the semantics of ```StationSerice.Node``` and ```StationService.StationQueryReply```. They clearly indicate what it being returned to the user.

There’s not much (read nothing) in terms of HTTP headers that is required, as such, a simple ```DataTask``` is used throughout.

The full documentation can be found [here](https://github.com/joaoc-pires/PortugalTrains).

The app, once (re-)released, can be found [here](https://apps.apple.com/us/app/rede-comboios-de-portugal/id1447635458).
