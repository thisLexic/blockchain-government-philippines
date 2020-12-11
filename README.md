
# Blockchain for The Philippine Government using Hyperledger Fabric 🇵🇭
This is a blockchain application for decentralizing information stored by the Philippine government. This information can include public project bids, search warrants, police reports, land titles, tax payments etc.

This application is still in its prototyping stage. It is going to be used as my thesis. It makes use of two main technologies: Docker Compose and Hyperledger Fabric

## The Problem this Thesis is meant to Alleviate
At the moment, different government agencies separately store different types of information. The DPWH stores public bids of their projects. The BIR stores tax payments made by Filipinoes. However, as these government agencies are susceptible to corruption, it is entirely possible for any government agency to rewrite their culpable entries into innocent ones as only they have access to it, or vice versa.

For example, the BIR could rewrite your tax payments to make it seem like you did not pay your taxes. If you have lost the receipt for that payment, you would be facing a large fine for tax evasion even though you paid your taxes properly.

## The Solution this Thesis is meant to Provide
Instead of one government agency storing their own information individually, several government agencies could hold the information of each government agency. For example, if the DPWH has a project with bids from several companies, that information would not be stored solely with DPWH. It will also be made accessible all the time in different government agencies (COA for example).

This way, if any false rewrites are made, other government agencies can act as fact checkers. Let us take the problem proposed in the previous section as an example. A BIR employee attempts to invalidate a person's tax payment. COA would be able to see that invalid rewrite as they can directly see what other government agencies are entering and changing in the user data.

This would promote accessibility of information and transparency of processes in the Philippine Administration. Hopefully, it will also lessen corruption.
