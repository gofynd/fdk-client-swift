

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var appFacing: Bool?

        public var isActive: Bool?

        public var name: String

        public var appDisplayName: String?

        public var id: Int

        public var notifyCustomer: Bool?

        public var journeyType: String

        public var displayName: String

        public var appStateName: String?

        public var stateType: String

        public enum CodingKeys: String, CodingKey {
            case appFacing = "app_facing"

            case isActive = "is_active"

            case name

            case appDisplayName = "app_display_name"

            case id

            case notifyCustomer = "notify_customer"

            case journeyType = "journey_type"

            case displayName = "display_name"

            case appStateName = "app_state_name"

            case stateType = "state_type"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, displayName: String, id: Int, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.appFacing = appFacing

            self.isActive = isActive

            self.name = name

            self.appDisplayName = appDisplayName

            self.id = id

            self.notifyCustomer = notifyCustomer

            self.journeyType = journeyType

            self.displayName = displayName

            self.appStateName = appStateName

            self.stateType = stateType
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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateType = try container.decode(String.self, forKey: .stateType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var appFacing: Bool?

        public var isActive: Bool?

        public var name: String

        public var appDisplayName: String?

        public var id: Int

        public var notifyCustomer: Bool?

        public var journeyType: String

        public var displayName: String

        public var appStateName: String?

        public var stateType: String

        public enum CodingKeys: String, CodingKey {
            case appFacing = "app_facing"

            case isActive = "is_active"

            case name

            case appDisplayName = "app_display_name"

            case id

            case notifyCustomer = "notify_customer"

            case journeyType = "journey_type"

            case displayName = "display_name"

            case appStateName = "app_state_name"

            case stateType = "state_type"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, displayName: String, id: Int, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.appFacing = appFacing

            self.isActive = isActive

            self.name = name

            self.appDisplayName = appDisplayName

            self.id = id

            self.notifyCustomer = notifyCustomer

            self.journeyType = journeyType

            self.displayName = displayName

            self.appStateName = appStateName

            self.stateType = stateType
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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateType = try container.decode(String.self, forKey: .stateType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)
        }
    }
}
