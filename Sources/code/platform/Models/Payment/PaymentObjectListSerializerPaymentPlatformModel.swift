

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentGateway: String

        public var id: String

        public var companyId: String

        public var paymentMode: String

        public var currency: String

        public var refundedBy: String

        public var collectedBy: String

        public var applicationId: String

        public var modifiedOn: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case id

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case currency

            case refundedBy = "refunded_by"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentGateway = paymentGateway

            self.id = id

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.currency = currency

            self.refundedBy = refundedBy

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currency = try container.decode(String.self, forKey: .currency)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentGateway: String

        public var id: String

        public var companyId: String

        public var paymentMode: String

        public var currency: String

        public var refundedBy: String

        public var collectedBy: String

        public var applicationId: String

        public var modifiedOn: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var paymentModeIdentifier: String

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentGateway = "payment_gateway"

            case id

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case currency

            case refundedBy = "refunded_by"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentGateway = paymentGateway

            self.id = id

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.currency = currency

            self.refundedBy = refundedBy

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currency = try container.decode(String.self, forKey: .currency)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}
