

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var journeyType: String

        public var name: String

        public var stateType: String

        public var notifyCustomer: Bool?

        public var isActive: Bool?

        public var bsId: Int

        public var appStateName: String?

        public var displayName: String

        public var appFacing: Bool?

        public var appDisplayName: String?

        public enum CodingKeys: String, CodingKey {
            case journeyType = "journey_type"

            case name

            case stateType = "state_type"

            case notifyCustomer = "notify_customer"

            case isActive = "is_active"

            case bsId = "bs_id"

            case appStateName = "app_state_name"

            case displayName = "display_name"

            case appFacing = "app_facing"

            case appDisplayName = "app_display_name"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.journeyType = journeyType

            self.name = name

            self.stateType = stateType

            self.notifyCustomer = notifyCustomer

            self.isActive = isActive

            self.bsId = bsId

            self.appStateName = appStateName

            self.displayName = displayName

            self.appFacing = appFacing

            self.appDisplayName = appDisplayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            name = try container.decode(String.self, forKey: .name)

            stateType = try container.decode(String.self, forKey: .stateType)

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

            bsId = try container.decode(Int.self, forKey: .bsId)

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

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

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var journeyType: String

        public var name: String

        public var stateType: String

        public var notifyCustomer: Bool?

        public var isActive: Bool?

        public var bsId: Int

        public var appStateName: String?

        public var displayName: String

        public var appFacing: Bool?

        public var appDisplayName: String?

        public enum CodingKeys: String, CodingKey {
            case journeyType = "journey_type"

            case name

            case stateType = "state_type"

            case notifyCustomer = "notify_customer"

            case isActive = "is_active"

            case bsId = "bs_id"

            case appStateName = "app_state_name"

            case displayName = "display_name"

            case appFacing = "app_facing"

            case appDisplayName = "app_display_name"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.journeyType = journeyType

            self.name = name

            self.stateType = stateType

            self.notifyCustomer = notifyCustomer

            self.isActive = isActive

            self.bsId = bsId

            self.appStateName = appStateName

            self.displayName = displayName

            self.appFacing = appFacing

            self.appDisplayName = appDisplayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            name = try container.decode(String.self, forKey: .name)

            stateType = try container.decode(String.self, forKey: .stateType)

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

            bsId = try container.decode(Int.self, forKey: .bsId)

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

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

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
        }
    }
}
