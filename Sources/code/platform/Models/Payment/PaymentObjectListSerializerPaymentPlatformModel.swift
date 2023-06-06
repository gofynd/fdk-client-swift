

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var createdOn: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var applicationId: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var companyId: String

        public var collectedBy: String

        public var currentStatus: String

        public var id: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case companyId = "company_id"

            case collectedBy = "collected_by"

            case currentStatus = "current_status"

            case id

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.companyId = companyId

            self.collectedBy = collectedBy

            self.currentStatus = currentStatus

            self.id = id

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

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
        public var paymentId: String?

        public var createdOn: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var applicationId: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var companyId: String

        public var collectedBy: String

        public var currentStatus: String

        public var id: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case companyId = "company_id"

            case collectedBy = "collected_by"

            case currentStatus = "current_status"

            case id

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.companyId = companyId

            self.collectedBy = collectedBy

            self.currentStatus = currentStatus

            self.id = id

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
