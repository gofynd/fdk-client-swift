

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var redirectUrl: String

        public var session: [String: Any]

        public var status: Bool

        public var statusRemark: String?

        public var isEligibleForTxn: Bool?

        public var merchantCustomerRefId: String?

        public var activationUrl: String?

        public enum CodingKeys: String, CodingKey {
            case redirectUrl = "redirect_url"

            case session

            case status

            case statusRemark = "status_remark"

            case isEligibleForTxn = "is_eligible_for_txn"

            case merchantCustomerRefId = "merchant_customer_ref_id"

            case activationUrl = "activation_url"
        }

        public init(activationUrl: String? = nil, isEligibleForTxn: Bool? = nil, merchantCustomerRefId: String? = nil, redirectUrl: String, session: [String: Any], status: Bool, statusRemark: String? = nil) {
            self.redirectUrl = redirectUrl

            self.session = session

            self.status = status

            self.statusRemark = statusRemark

            self.isEligibleForTxn = isEligibleForTxn

            self.merchantCustomerRefId = merchantCustomerRefId

            self.activationUrl = activationUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            session = try container.decode([String: Any].self, forKey: .session)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                statusRemark = try container.decode(String.self, forKey: .statusRemark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isEligibleForTxn = try container.decode(Bool.self, forKey: .isEligibleForTxn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                activationUrl = try container.decode(String.self, forKey: .activationUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(session, forKey: .session)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(statusRemark, forKey: .statusRemark)

            try? container.encodeIfPresent(isEligibleForTxn, forKey: .isEligibleForTxn)

            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encodeIfPresent(activationUrl, forKey: .activationUrl)
        }
    }
}
