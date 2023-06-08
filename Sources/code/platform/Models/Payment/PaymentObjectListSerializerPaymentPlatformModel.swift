

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var refundObject: [String: Any]?

        public var id: String

        public var applicationId: String

        public var paymentId: String?

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentMode: String

        public var collectedBy: String

        public var paymentGateway: String

        public var allStatus: [String]

        public var refundedBy: String

        public var modifiedOn: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var userObject: [String: Any]

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case refundObject = "refund_object"

            case id

            case applicationId = "application_id"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case userObject = "user_object"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.refundObject = refundObject

            self.id = id

            self.applicationId = applicationId

            self.paymentId = paymentId

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.userObject = userObject

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

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
        public var createdOn: String

        public var refundObject: [String: Any]?

        public var id: String

        public var applicationId: String

        public var paymentId: String?

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentMode: String

        public var collectedBy: String

        public var paymentGateway: String

        public var allStatus: [String]

        public var refundedBy: String

        public var modifiedOn: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var userObject: [String: Any]

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case refundObject = "refund_object"

            case id

            case applicationId = "application_id"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentMode = "payment_mode"

            case collectedBy = "collected_by"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case userObject = "user_object"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.refundObject = refundObject

            self.id = id

            self.applicationId = applicationId

            self.paymentId = paymentId

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentMode = paymentMode

            self.collectedBy = collectedBy

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.userObject = userObject

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
