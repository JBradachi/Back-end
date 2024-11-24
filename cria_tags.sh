

for brnch in $(git branch -r| grep 'origin/'$1 | sed 's/origin\///'); do
        echo $brnch
        git tag $brnch $brnch 
   done

# se tudo ocorrer bem use o comando $ git push origin --tags
# ele vai enviar todas as tags q não foram enviadas
