

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var paymentMode: String

        public var allStatus: [String]

        public var createdOn: String

        public var companyId: String

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var amountInPaisa: String

        public var id: String

        public var modifiedOn: String

        public var currentStatus: String

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var paymentGateway: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case companyId = "company_id"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case amountInPaisa = "amount_in_paisa"

            case id

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case paymentGateway = "payment_gateway"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.companyId = companyId

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.paymentGateway = paymentGateway

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

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

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

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
        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var paymentMode: String

        public var allStatus: [String]

        public var createdOn: String

        public var companyId: String

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var amountInPaisa: String

        public var id: String

        public var modifiedOn: String

        public var currentStatus: String

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var paymentGateway: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case companyId = "company_id"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case amountInPaisa = "amount_in_paisa"

            case id

            case modifiedOn = "modified_on"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case paymentGateway = "payment_gateway"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.companyId = companyId

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.modifiedOn = modifiedOn

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.paymentGateway = paymentGateway

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

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

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
