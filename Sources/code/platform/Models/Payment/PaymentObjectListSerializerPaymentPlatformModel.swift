

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var refundedBy: String

        public var paymentMode: String

        public var createdOn: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentGateway: String

        public var paymentId: String?

        public var id: String

        public var userObject: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case currency

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case id

            case userObject = "user_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.currency = currency

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.id = id

            self.userObject = userObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            userObject = try container.decode([String: Any].self, forKey: .userObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(userObject, forKey: .userObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var refundedBy: String

        public var paymentMode: String

        public var createdOn: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var currency: String

        public var applicationId: String

        public var modifiedOn: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentGateway: String

        public var paymentId: String?

        public var id: String

        public var userObject: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case currency

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case id

            case userObject = "user_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.currency = currency

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.id = id

            self.userObject = userObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            userObject = try container.decode([String: Any].self, forKey: .userObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(userObject, forKey: .userObject)
        }
    }
}
