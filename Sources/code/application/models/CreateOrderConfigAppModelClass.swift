

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderConfig
         Used By: Order
     */
    class CreateOrderConfig: Codable {
        public var dpConfiguration: DpConfiguration?

        public var shipmentAssignment: String?

        public var paymentInfo: PaymentInfo?

        public var lockStates: String?

        public var logoUrl: [String: Any]?

        public var locationReassignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case dpConfiguration = "dp_configuration"

            case shipmentAssignment = "shipment_assignment"

            case paymentInfo = "payment_info"

            case lockStates = "lock_states"

            case logoUrl = "logo_url"

            case locationReassignment = "location_reassignment"
        }

        public init(dpConfiguration: DpConfiguration? = nil, locationReassignment: Bool? = nil, lockStates: String? = nil, logoUrl: [String: Any]? = nil, paymentInfo: PaymentInfo? = nil, shipmentAssignment: String? = nil) {
            self.dpConfiguration = dpConfiguration

            self.shipmentAssignment = shipmentAssignment

            self.paymentInfo = paymentInfo

            self.lockStates = lockStates

            self.logoUrl = logoUrl

            self.locationReassignment = locationReassignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpConfiguration = try container.decode(DpConfiguration.self, forKey: .dpConfiguration)

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

            do {
                paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStates = try container.decode(String.self, forKey: .lockStates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode([String: Any].self, forKey: .logoUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpConfiguration, forKey: .dpConfiguration)

            try? container.encodeIfPresent(shipmentAssignment, forKey: .shipmentAssignment)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(lockStates, forKey: .lockStates)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(locationReassignment, forKey: .locationReassignment)
        }
    }
}
