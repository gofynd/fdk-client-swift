

import Foundation
public extension PlatformClient {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var appDisplayName: String?

        public var bsId: Int

        public var appFacing: Bool?

        public var isActive: Bool?

        public var appStateName: String?

        public var displayName: String

        public var name: String

        public var journeyType: String

        public var stateType: String

        public var notifyCustomer: Bool?

        public enum CodingKeys: String, CodingKey {
            case appDisplayName = "app_display_name"

            case bsId = "bs_id"

            case appFacing = "app_facing"

            case isActive = "is_active"

            case appStateName = "app_state_name"

            case displayName = "display_name"

            case name

            case journeyType = "journey_type"

            case stateType = "state_type"

            case notifyCustomer = "notify_customer"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.appDisplayName = appDisplayName

            self.bsId = bsId

            self.appFacing = appFacing

            self.isActive = isActive

            self.appStateName = appStateName

            self.displayName = displayName

            self.name = name

            self.journeyType = journeyType

            self.stateType = stateType

            self.notifyCustomer = notifyCustomer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bsId = try container.decode(Int.self, forKey: .bsId)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

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
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            stateType = try container.decode(String.self, forKey: .stateType)

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)
        }
    }
}
