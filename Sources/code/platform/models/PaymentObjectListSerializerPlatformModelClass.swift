

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]

        public var refundObject: [String: Any]?

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var allStatus: [String]

        public var currency: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var collectedBy: String

        public var paymentGateway: String

        public var refundedBy: String

        public var amountInPaisa: String

        public var companyId: String

        public var applicationId: String

        public var createdOn: String

        public var paymentId: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case allStatus = "all_status"

            case currency

            case userObject = "user_object"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case paymentId = "payment_id"

            case id
        }

        public init(aggregatorPaymentObject: [String: Any], allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String? = nil, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.allStatus = allStatus

            self.currency = currency

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.paymentId = paymentId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currency = try container.decode(String.self, forKey: .currency)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(id, forKey: .id)
        }
    }
}
