

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundedBy: String

        public var applicationId: String

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var userObject: [String: Any]

        public var modifiedOn: String

        public var companyId: String

        public var currentStatus: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var createdOn: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var collectedBy: String

        public var paymentMode: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case userObject = "user_object"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.userObject = userObject

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

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
        public var refundedBy: String

        public var applicationId: String

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var userObject: [String: Any]

        public var modifiedOn: String

        public var companyId: String

        public var currentStatus: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var createdOn: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var collectedBy: String

        public var paymentMode: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case applicationId = "application_id"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case userObject = "user_object"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case createdOn = "created_on"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case currency
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.applicationId = applicationId

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.userObject = userObject

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.createdOn = createdOn

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
