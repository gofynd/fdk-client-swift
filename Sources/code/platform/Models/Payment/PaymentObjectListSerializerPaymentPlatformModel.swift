

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var applicationId: String

        public var companyId: String

        public var currency: String

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var modifiedOn: String

        public var id: String

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var refundedBy: String

        public var createdOn: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case applicationId = "application_id"

            case companyId = "company_id"

            case currency

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case id

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentMode = "payment_mode"

            case userObject = "user_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.applicationId = applicationId

            self.companyId = companyId

            self.currency = currency

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.id = id

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentMode = paymentMode

            self.userObject = userObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

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

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

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
        public var allStatus: [String]

        public var applicationId: String

        public var companyId: String

        public var currency: String

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public var amountInPaisa: String

        public var modifiedOn: String

        public var id: String

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var refundedBy: String

        public var createdOn: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case applicationId = "application_id"

            case companyId = "company_id"

            case currency

            case collectedBy = "collected_by"

            case refundObject = "refund_object"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case id

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentMode = "payment_mode"

            case userObject = "user_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.applicationId = applicationId

            self.companyId = companyId

            self.currency = currency

            self.collectedBy = collectedBy

            self.refundObject = refundObject

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.id = id

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentMode = paymentMode

            self.userObject = userObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

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

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)
        }
    }
}
