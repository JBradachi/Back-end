

for brnch in $(git branch -r| grep 'origin/'$1 | sed 's/origin\///'); do
        echo $brnch
        git tag $brnch $brnch 
   done