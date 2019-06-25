func calcBmi(_ ass: Float, _ height : Float) -> String {
    let bmi = ass / (height * height)
    var interp : String
    if bmi > 25 {
        interp = "you are too heavy"
    } else if bmi >= 18.5 {
        interp = "you are normal"
    } else {
        interp =  "you are slim"
    }
    let str = String(describing: bmi)
    return "your bmi is \(str) and \(interp)"
}

let x = [1,2,3,4,5,6,7,8,9,10]
for num in x.reversed() where num % 2 == 0 {
    print(num)
}
print(calcBmi(10, 20))
print(calcBmi(_: 100, ab: 1.75))
