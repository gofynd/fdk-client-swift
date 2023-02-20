

import Foundation
public extension PlatformClient {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var appFacing: Bool?

        public var appStateName: String?

        public var bsId: Int

        public var notifyCustomer: Bool?

        public var isActive: Bool?

        public var journeyType: String

        public var stateType: String

        public var appDisplayName: String?

        public var displayName: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case appFacing = "app_facing"

            case appStateName = "app_state_name"

            case bsId = "bs_id"

            case notifyCustomer = "notify_customer"

            case isActive = "is_active"

            case journeyType = "journey_type"

            case stateType = "state_type"

            case appDisplayName = "app_display_name"

            case displayName = "display_name"

            case name
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.appFacing = appFacing

            self.appStateName = appStateName

            self.bsId = bsId

            self.notifyCustomer = notifyCustomer

            self.isActive = isActive

            self.journeyType = journeyType

            self.stateType = stateType

            self.appDisplayName = appDisplayName

            self.displayName = displayName

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bsId = try container.decode(Int.self, forKey: .bsId)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            stateType = try container.decode(String.self, forKey: .stateType)

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
