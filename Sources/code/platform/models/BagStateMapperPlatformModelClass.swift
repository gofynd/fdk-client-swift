

import Foundation
public extension PlatformClient {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var stateType: String

        public var name: String

        public var appFacing: Bool?

        public var displayName: String

        public var bsId: Int

        public var appStateName: String?

        public var journeyType: String

        public var notifyCustomer: Bool?

        public var isActive: Bool?

        public var appDisplayName: String?

        public enum CodingKeys: String, CodingKey {
            case stateType = "state_type"

            case name

            case appFacing = "app_facing"

            case displayName = "display_name"

            case bsId = "bs_id"

            case appStateName = "app_state_name"

            case journeyType = "journey_type"

            case notifyCustomer = "notify_customer"

            case isActive = "is_active"

            case appDisplayName = "app_display_name"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.stateType = stateType

            self.name = name

            self.appFacing = appFacing

            self.displayName = displayName

            self.bsId = bsId

            self.appStateName = appStateName

            self.journeyType = journeyType

            self.notifyCustomer = notifyCustomer

            self.isActive = isActive

            self.appDisplayName = appDisplayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stateType = try container.decode(String.self, forKey: .stateType)

            name = try container.decode(String.self, forKey: .name)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            bsId = try container.decode(Int.self, forKey: .bsId)

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
        }
    }
}
