

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentId: String?

        public var id: String

        public var createdOn: String

        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var refundedBy: String

        public var companyId: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case id

            case createdOn = "created_on"

            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.id = id

            self.createdOn = createdOn

            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

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
        public var allStatus: [String]

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var amountInPaisa: String

        public var paymentMode: String

        public var paymentId: String?

        public var id: String

        public var createdOn: String

        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var refundedBy: String

        public var companyId: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var paymentGateway: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case id

            case createdOn = "created_on"

            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case paymentGateway = "payment_gateway"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.id = id

            self.createdOn = createdOn

            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.refundObject = refundObject

            self.paymentGateway = paymentGateway

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
