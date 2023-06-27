

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var aggregatorPaymentObject: [String: Any]?

        public var createdOn: String

        public var allStatus: [String]

        public var userObject: [String: Any]

        public var refundedBy: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var applicationId: String

        public var paymentMode: String

        public var companyId: String

        public var id: String

        public var collectedBy: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var refundObject: [String: Any]?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorPaymentObject = "aggregator_payment_object"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case userObject = "user_object"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case companyId = "company_id"

            case id

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case refundObject = "refund_object"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.userObject = userObject

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.companyId = companyId

            self.id = id

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.refundObject = refundObject

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var aggregatorPaymentObject: [String: Any]?

        public var createdOn: String

        public var allStatus: [String]

        public var userObject: [String: Any]

        public var refundedBy: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var applicationId: String

        public var paymentMode: String

        public var companyId: String

        public var id: String

        public var collectedBy: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var refundObject: [String: Any]?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorPaymentObject = "aggregator_payment_object"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case userObject = "user_object"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case companyId = "company_id"

            case id

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case refundObject = "refund_object"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.userObject = userObject

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.companyId = companyId

            self.id = id

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.refundObject = refundObject

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
