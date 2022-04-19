import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */

    class AddBeneficiaryDetailsRequest: Codable {
        public var otp: String?

        public var orderId: String

        public var requestId: String?

        public var details: BeneficiaryModeDetails

        public var transferMode: String

        public var shipmentId: String

        public var delights: Bool

        public enum CodingKeys: String, CodingKey {
            case otp

            case orderId = "order_id"

            case requestId = "request_id"

            case details

            case transferMode = "transfer_mode"

            case shipmentId = "shipment_id"

            case delights
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.otp = otp

            self.orderId = orderId

            self.requestId = requestId

            self.details = details

            self.transferMode = transferMode

            self.shipmentId = shipmentId

            self.delights = delights
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            delights = try container.decode(Bool.self, forKey: .delights)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(delights, forKey: .delights)
        }
    }
}
