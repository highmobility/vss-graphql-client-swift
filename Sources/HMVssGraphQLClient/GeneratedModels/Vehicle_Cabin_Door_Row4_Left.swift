import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Door_Row4_Left {
     """
     Is door child lock engaged. True = Engaged. False = Disengaged.
     """
     isChildLockActive: Boolean
     """
     Is door locked or unlocked. True = Locked. False = Unlocked.
     """
     isLocked: Boolean
     """
     Is door open or closed
     """
     isOpen: Boolean
     shade: Vehicle_Cabin_Door_Row4_Left_Shade
     window: Vehicle_Cabin_Door_Row4_Left_Window
   }
*/

final class Vehicle_Cabin_Door_Row4_Left: Object, ObjectSchema {

    /**
    Is door child lock engaged. True = Engaged. False = Disengaged.
    */
    var isChildLockActive = Field<Bool?, NoArguments>("isChildLockActive")

    /**
    Is door locked or unlocked. True = Locked. False = Unlocked.
    */
    var isLocked = Field<Bool?, NoArguments>("isLocked")

    /**
    Is door open or closed
    */
    var isOpen = Field<Bool?, NoArguments>("isOpen")

    var shade = Field<Vehicle_Cabin_Door_Row4_Left_Shade?, NoArguments>("shade")

    var window = Field<Vehicle_Cabin_Door_Row4_Left_Window?, NoArguments>("window")

}


public class Cabin_Door_Row4_Left: Model {

    typealias PartialType = Vehicle_Cabin_Door_Row4_Left

    public let isChildLockActive: Bool?
    public let isLocked: Bool?
    public let isOpen: Bool?
    public let shade: Cabin_Door_Row4_Left_Shade?
    public let window: Cabin_Door_Row4_Left_Window?

    required init?(partial: Partial<PartialType?>) {
        isChildLockActive = partial.isChildLockActive ?? nil
        isLocked = partial.isLocked ?? nil
        isOpen = partial.isOpen ?? nil
        shade = Cabin_Door_Row4_Left_Shade(partial: partial.shade)
        window = Cabin_Door_Row4_Left_Window(partial: partial.window)
    }
}
