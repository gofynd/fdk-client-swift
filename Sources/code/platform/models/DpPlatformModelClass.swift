

import Foundation
public extension PlatformClient {
    /*
         Model: Dp
         Used By: Serviceability
     */

    class Dp: Codable {
        public var rvpPriority: Int?

        public var internalAccountId: String?

        public var transportMode: String?

        public var areaCode: Int?

        public var paymentMode: String?

        public var externalAccountId: String?

        public var lmPriority: Int?

        public var assignDpFromSb: Bool?

        public var fmPriority: Int?

        public var operations: [String]?

        public enum CodingKeys: String, CodingKey {
            case rvpPriority = "rvp_priority"

            case internalAccountId = "internal_account_id"

            case transportMode = "transport_mode"

            case areaCode = "area_code"

            case paymentMode = "payment_mode"

            case externalAccountId = "external_account_id"

            case lmPriority = "lm_priority"

            case assignDpFromSb = "assign_dp_from_sb"

            case fmPriority = "fm_priority"

            case operations
        }

        public init(areaCode: Int? = nil, assignDpFromSb: Bool? = nil, externalAccountId: String? = nil, fmPriority: Int? = nil, internalAccountId: String? = nil, lmPriority: Int? = nil, operations: [String]? = nil, paymentMode: String? = nil, rvpPriority: Int? = nil, transportMode: String? = nil) {
            self.rvpPriority = rvpPriority

            self.internalAccountId = internalAccountId

            self.transportMode = transportMode

            self.areaCode = areaCode

            self.paymentMode = paymentMode

            self.externalAccountId = externalAccountId

            self.lmPriority = lmPriority

            self.assignDpFromSb = assignDpFromSb

            self.fmPriority = fmPriority

            self.operations = operations
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rvpPriority = try container.decode(Int.self, forKey: .rvpPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                internalAccountId = try container.decode(String.self, forKey: .internalAccountId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transportMode = try container.decode(String.self, forKey: .transportMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                areaCode = try container.decode(Int.self, forKey: .areaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalAccountId = try container.decode(String.self, forKey: .externalAccountId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lmPriority = try container.decode(Int.self, forKey: .lmPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                assignDpFromSb = try container.decode(Bool.self, forKey: .assignDpFromSb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fmPriority = try container.decode(Int.self, forKey: .fmPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operations = try container.decode([String].self, forKey: .operations)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rvpPriority, forKey: .rvpPriority)

            try? container.encodeIfPresent(internalAccountId, forKey: .internalAccountId)

            try? container.encodeIfPresent(transportMode, forKey: .transportMode)

            try? container.encode(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(externalAccountId, forKey: .externalAccountId)

            try? container.encodeIfPresent(lmPriority, forKey: .lmPriority)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(fmPriority, forKey: .fmPriority)

            try? container.encodeIfPresent(operations, forKey: .operations)
        }
    }
}
