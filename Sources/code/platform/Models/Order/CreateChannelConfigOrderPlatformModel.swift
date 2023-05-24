

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreateChannelConfig
         Used By: Order
     */

    class CreateChannelConfig: Codable {
        public var logoUrl: [String: Any]?

        public var lockStates: [String]?

        public var paymentInfo: CreateChannelPaymentInfo?

        public var dpConfiguration: DpConfiguration?

        public var locationReassignment: Bool?

        public var shipmentAssignment: String?

        public enum CodingKeys: String, CodingKey {
            case logoUrl = "logo_url"

            case lockStates = "lock_states"

            case paymentInfo = "payment_info"

            case dpConfiguration = "dp_configuration"

            case locationReassignment = "location_reassignment"

            case shipmentAssignment = "shipment_assignment"
        }

        public init(dpConfiguration: DpConfiguration? = nil, locationReassignment: Bool? = nil, lockStates: [String]? = nil, logoUrl: [String: Any]? = nil, paymentInfo: CreateChannelPaymentInfo? = nil, shipmentAssignment: String? = nil) {
            self.logoUrl = logoUrl

            self.lockStates = lockStates

            self.paymentInfo = paymentInfo

            self.dpConfiguration = dpConfiguration

            self.locationReassignment = locationReassignment

            self.shipmentAssignment = shipmentAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logoUrl = try container.decode([String: Any].self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStates = try container.decode([String].self, forKey: .lockStates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentInfo = try container.decode(CreateChannelPaymentInfo.self, forKey: .paymentInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentAssignment = try container.decode(String.self, forKey: .shipmentAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(lockStates, forKey: .lockStates)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)

            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)

            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreateChannelConfig
         Used By: Order
     */

    class CreateChannelConfig: Codable {
        public var logoUrl: [String: Any]?

        public var lockStates: [String]?

        public var paymentInfo: CreateChannelPaymentInfo?

        public var dpConfiguration: DpConfiguration?

        public var locationReassignment: Bool?

        public var shipmentAssignment: String?

        public enum CodingKeys: String, CodingKey {
            case logoUrl = "logo_url"

            case lockStates = "lock_states"

            case paymentInfo = "payment_info"

            case dpConfiguration = "dp_configuration"

            case locationReassignment = "location_reassignment"

            case shipmentAssignment = "shipment_assignment"
        }

        public init(dpConfiguration: DpConfiguration? = nil, locationReassignment: Bool? = nil, lockStates: [String]? = nil, logoUrl: [String: Any]? = nil, paymentInfo: CreateChannelPaymentInfo? = nil, shipmentAssignment: String? = nil) {
            self.logoUrl = logoUrl

            self.lockStates = lockStates

            self.paymentInfo = paymentInfo

            self.dpConfiguration = dpConfiguration

            self.locationReassignment = locationReassignment

            self.shipmentAssignment = shipmentAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logoUrl = try container.decode([String: Any].self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStates = try container.decode([String].self, forKey: .lockStates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentInfo = try container.decode(CreateChannelPaymentInfo.self, forKey: .paymentInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationReassignment = try container.decode(Bool.self, forKey: .locationReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentAssignment = try container.decode(String.self, forKey: .shipmentAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(lockStates, forKey: .lockStates)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)

            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)

            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)
        }
    }
}
