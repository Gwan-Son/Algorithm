import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var card1_copy = cards1
    var card2_copy = cards2

    for item_goal in goal {
        if card1_copy.first == item_goal {
            card1_copy.removeFirst()
        } else if card2_copy.first == item_goal {
            card2_copy.removeFirst()
        } else {
            return "No"
        }
    }
    return "Yes"

}
