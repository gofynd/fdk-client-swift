

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var currency: String

        public var currentStatus: String

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var createdOn: String

        public var paymentMode: String

        public var applicationId: String

        public var companyId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var collectedBy: String

        public var id: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var userObject: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case collectedBy = "collected_by"

            case id

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case userObject = "user_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.collectedBy = collectedBy

            self.id = id

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.userObject = userObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

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
        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var currency: String

        public var currentStatus: String

        public var paymentGateway: String

        public var refundObject: [String: Any]?

        public var createdOn: String

        public var paymentMode: String

        public var applicationId: String

        public var companyId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var collectedBy: String

        public var id: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var userObject: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case refundObject = "refund_object"

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case collectedBy = "collected_by"

            case id

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case userObject = "user_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.refundObject = refundObject

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.collectedBy = collectedBy

            self.id = id

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.userObject = userObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)
        }
    }
}
