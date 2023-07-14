

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var displayName: String

        public var journeyType: String

        public var name: String

        public var appDisplayName: String?

        public var stateType: String

        public var appFacing: Bool?

        public var id: Int

        public var isActive: Bool?

        public var appStateName: String?

        public var notifyCustomer: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case journeyType = "journey_type"

            case name

            case appDisplayName = "app_display_name"

            case stateType = "state_type"

            case appFacing = "app_facing"

            case id

            case isActive = "is_active"

            case appStateName = "app_state_name"

            case notifyCustomer = "notify_customer"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, displayName: String, id: Int, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.displayName = displayName

            self.journeyType = journeyType

            self.name = name

            self.appDisplayName = appDisplayName

            self.stateType = stateType

            self.appFacing = appFacing

            self.id = id

            self.isActive = isActive

            self.appStateName = appStateName

            self.notifyCustomer = notifyCustomer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            name = try container.decode(String.self, forKey: .name)

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateType = try container.decode(String.self, forKey: .stateType)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

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

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStateMapper
         Used By: Order
     */

    class BagStateMapper: Codable {
        public var displayName: String

        public var journeyType: String

        public var name: String

        public var appDisplayName: String?

        public var stateType: String

        public var appFacing: Bool?

        public var id: Int

        public var isActive: Bool?

        public var appStateName: String?

        public var notifyCustomer: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case journeyType = "journey_type"

            case name

            case appDisplayName = "app_display_name"

            case stateType = "state_type"

            case appFacing = "app_facing"

            case id

            case isActive = "is_active"

            case appStateName = "app_state_name"

            case notifyCustomer = "notify_customer"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, displayName: String, id: Int, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.displayName = displayName

            self.journeyType = journeyType

            self.name = name

            self.appDisplayName = appDisplayName

            self.stateType = stateType

            self.appFacing = appFacing

            self.id = id

            self.isActive = isActive

            self.appStateName = appStateName

            self.notifyCustomer = notifyCustomer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            name = try container.decode(String.self, forKey: .name)

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateType = try container.decode(String.self, forKey: .stateType)

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

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

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)
        }
    }
}
