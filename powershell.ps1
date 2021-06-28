#Generates a array of numbers between 1 and 100
Write-Host "Guess the correct number from the array given"
$arrayOfRandomInts = Get-Random -Minimum 1 -Maximum 100 -Count 20
#Gets a random index between 0 and 19. (This would make it 20)
$selectRandomIndex = Get-Random -Count 1 -Maximum 19
#Selects the index of the random number
$theRandomNum = $arrayOfRandomInts[$selectRandomIndex]

Write-Host $arrayOfRandomInts

#Takes in the user inputs
$number1 = Read-Host -Prompt 'Input guess number 1'
$number2 = Read-Host -Prompt 'Input guess number 2'
$number3 = Read-Host -Prompt 'Input guess number 3'

#Checks the values length are greater than 1, and not a String value.
if($number1.Length -gt 0 -and $number2.Length -gt 0 -and $number3.Length -gt 0 -and $number1 -match '^[0-9]+$' -and $number2 -match '^[0-9]+$' -and $number3 -match '^[0-9]+$')
{
        if($theRandomNum -eq $number1)
        {
            Write-Host "Your number" $number1 "was correct!"
        }
        elseif($theRandomNum -eq $number2)
        {
            Write-Host "Your number" $number2 "was correct!"
        }
        elseif($theRandomNum -eq $number3)
        {
            Write-Host "Your number"  $number3 "was correct!"
        }
        else {
            Write-Host "Numbers were incorrect. The correct number was: " $theRandomNum   
    }
}
else {
    Write-Host "Values cannot be empty or a string."
}

