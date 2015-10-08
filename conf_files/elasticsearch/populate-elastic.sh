echo "Enter the number of records to insert: "
read n
if [ -z $n ]
then
    n=5
fi

echo "Enter the index name: "
read index
if [ -z $index ]
then
    index="indexname"
fi

echo "Enter the type name: "
read type
if [ -z $type ]
then
    type="typename"
fi

i=0

while [ $i -lt $n ]
do
command="curl -XPUT \"http://localhost:9200/$index/$type\" -d '{\"number\":\"`echo $i+1|bc`\", \"square\":\"`echo \($i+1\)*\($i+1\)|bc`\"}'"
eval $command
echo $command
i=`echo $i+1|bc`
done
