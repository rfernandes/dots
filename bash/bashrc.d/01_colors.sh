# Regular
tbla=$(tput setaf 0) # Black
tred=$(tput setaf 1) # Red
tgre=$(tput setaf 2) # Green
tyel=$(tput setaf 3) # Yellow
tblu=$(tput setaf 4) # Blue
tpur=$(tput setaf 5) # Purple
tcya=$(tput setaf 6) # Cyan
twhi=$(tput setaf 7) # White
# Bold
tbol=$(tput bold)

tbbla=$tbol$tbla # Black - Regular
tbred=$tbol$tred # Red
tbgre=$tbol$tgre # Green
tbyel=$tbol$tyel # Yellow
tbblu=$tbol$tblu # Blue
tbpur=$tbol$tpur # Purple
tbcya=$tbol$tcya # Cyan
tbwhi=$tbol$twhi # White
# Underline
tund=$(tput smul)

tubla=$tund$tbla # Black - Regular
tured=$tund$tred # Red
tugre=$tund$tgre # Green
tuyel=$tund$tyel # Yellow
tublu=$tund$tblu # Blue
tupur=$tund$tpur # Purple
tucya=$tund$tcya # Cyan
tuwhi=$tund$twhi # White

# Background
bbla=$(tput setab 0) # Black - Background
bred=$(tput setab 1) # Red
bgre=$(tput setab 2) # Green
byel=$(tput setab 3) # Yellow
bblu=$(tput setab 4) # Blue
bpur=$(tput setab 5) # Purple
bcya=$(tput setab 6) # Cyan
bwhi=$(tput setab 7) # White

# Reset
tres=$(tput sgr0) # all attributes off

# Other modes
trev=$(tput rev) # Reverse
tdim=$(tput dim) # Half bright

