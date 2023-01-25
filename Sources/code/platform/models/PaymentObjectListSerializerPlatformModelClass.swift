

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currentStatus: String

        public var collectedBy: String

        public var companyId: String

        public var allStatus: [String]

        public var currency: String

        public var modifiedOn: String

        public var createdOn: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var applicationId: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case companyId = "company_id"

            case allStatus = "all_status"

            case currency

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case id
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.companyId = companyId

            self.allStatus = allStatus

            self.currency = currency

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currency = try container.decode(String.self, forKey: .currency)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
