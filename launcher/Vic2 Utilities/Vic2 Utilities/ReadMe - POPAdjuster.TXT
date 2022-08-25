This tool works by setting three things: a list of province IDs to be affected, the description of the POPs to work on, and the operation to be done.

The list of provinces has to be entered in the "Province to edit" field, one per line. This can be done manually or using the "Add to list" box above it to add all the provinces owned/controlled/with cores from a specific country. Leaving the "tag" field empty will select all provinces without an owner, controller, or claimant.

The "POP to affect" box is a set of filter to target specific POPs by culture, religion, and inclusion in a list of POP types. Only POPs that match all the criteria will be affected. If the culture or religion fields are empty, no filter will be applied on that criteria.

The "Convert to" box describes the operation to be performed on POPs matching the criteria described above and in one of the province listed. Culture and Religion, if not null, will replace those of the original population. "Convert %", if equal to 100%, means the original population is modified. If equal to less than that, a new population is created with the new religion and/or culture, with the population size split of between the new one and the old one as specified. "POP size in %" is an increase or decrease of the new population (applied after the split, so only to the new one) - putting "200" will double the POPs, putting "50" halve them, etc. "Delete POPs" will simply removed all the relevent POPs.

POPAdjuster works on the original files in history/population. However, backups of every file modified are created in history/population/backups (with increasing numbers if the same file is multipled numerous times).

Examples:

To convert all British European possesions to orthodoxy:
- Enter "ENG" as tag in "Add to list", select "Europe" as the continent, then "add to list"
- Leave "POPs to affect" as is (we want all of them)
- Set "Religion" in "Convert to" to "orthodox"

To double the number of Irish catholic clergymen in the USA:
- Enter "USA" as tag in "Add to list", select "America" as the continent, then "add to list"
- Set the culture to "irish" and the religion to "catholic" in "POPs to affect". Remove all but "clergymen" from the types list
- Set "POP size in %" to 200