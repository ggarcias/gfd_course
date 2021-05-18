#=================================================================================
# You must do a bash script that sends different jobs to different cluster's nodes
#=================================================================================

# 1) Create bash script that takes 1 integer as an input and returns file_<integer>.txt
# in the folder folder_<integer>


i=0
for ${i} in {1..10}
do
    qstat -q all.q ${PWD}/project1.err ${PWD}/project1.out <path_to_bash_code>
done




