#!/bin/bash
<< 'm'
function tst
{

   echo $name 
   

} 
 
user=( elabbas sama bassant naggar hossam )  
for name in "${user[@]}"
do 
tst
done
m


<< 'waystoreturnvalues'
#1
function myfunc()
{
    myresult='some value'
}
myfunc
echo $myresult

#2
function myfunc()
{
    local  myresult='some value'
    echo "$myresult"
}

result=$(myfunc)   # or result=`myfunc`
echo $result

#3
function myfunc()
{
    local  __resultvar=$1
    local  myresult='some value'
    eval $__resultvar="'$myresult'"
}

myfunc result
echo $result



waystoreturnvalues

function myfunc()
{
    local  __resultvar=$1
    local  myresult='some value'
    if [[ "$__resultvar" ]]; then
        eval $__resultvar="'$myresult'"
    else
        echo "$myresult"
    fi
}

myfunc result
echo $result
result2=$(myfunc)
echo $result2