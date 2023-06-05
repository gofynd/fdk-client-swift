

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: DP
         Used By: Logistic
     */
    class DP: Codable {
        public var fmPriority: Int

        public var lmPriority: Int

        public var rvpPriority: Int

        public var paymentMode: String

        public var operations: [String]

        public var areaCode: String?

        public var assignDpFromSb: Bool?

        public var internalAccountId: String?

        public var externalAccountId: String?

        public var transportMode: String?

        public enum CodingKeys: String, CodingKey {
            case fmPriority = "fm_priority"

            case lmPriority = "lm_priority"

            case rvpPriority = "rvp_priority"

            case paymentMode = "payment_mode"

            case operations

            case areaCode = "area_code"

            case assignDpFromSb = "assign_dp_from_sb"

            case internalAccountId = "internal_account_id"

            case externalAccountId = "external_account_id"

            case transportMode = "transport_mode"
        }

        public init(areaCode: String? = nil, assignDpFromSb: Bool? = nil, externalAccountId: String? = nil, fmPriority: Int, internalAccountId: String? = nil, lmPriority: Int, operations: [String], paymentMode: String, rvpPriority: Int, transportMode: String? = nil) {
            self.fmPriority = fmPriority

            self.lmPriority = lmPriority

            self.rvpPriority = rvpPriority

            self.paymentMode = paymentMode

            self.operations = operations

            self.areaCode = areaCode

            self.assignDpFromSb = assignDpFromSb

            self.internalAccountId = internalAccountId

            self.externalAccountId = externalAccountId

            self.transportMode = transportMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fmPriority = try container.decode(Int.self, forKey: .fmPriority)

            lmPriority = try container.decode(Int.self, forKey: .lmPriority)

            rvpPriority = try container.decode(Int.self, forKey: .rvpPriority)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            operations = try container.decode([String].self, forKey: .operations)

            do {
                areaCode = try container.decode(String.self, forKey: .areaCode)

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
                internalAccountId = try container.decode(String.self, forKey: .internalAccountId)

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
                transportMode = try container.decode(String.self, forKey: .transportMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fmPriority, forKey: .fmPriority)

            try? container.encodeIfPresent(lmPriority, forKey: .lmPriority)

            try? container.encodeIfPresent(rvpPriority, forKey: .rvpPriority)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(operations, forKey: .operations)

            try? container.encode(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(assignDpFromSb, forKey: .assignDpFromSb)

            try? container.encodeIfPresent(internalAccountId, forKey: .internalAccountId)

            try? container.encode(externalAccountId, forKey: .externalAccountId)

            try? container.encodeIfPresent(transportMode, forKey: .transportMode)
        }
    }
}
