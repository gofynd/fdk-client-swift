

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var id: String

        public var refundedBy: String

        public var createdOn: String

        public var currency: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public var paymentGateway: String

        public var currentStatus: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case id

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.id = id

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var id: String

        public var refundedBy: String

        public var createdOn: String

        public var currency: String

        public var amountInPaisa: String

        public var paymentId: String?

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var allStatus: [String]

        public var paymentGateway: String

        public var currentStatus: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var collectedBy: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case id

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case collectedBy = "collected_by"

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.id = id

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.paymentId = paymentId

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.collectedBy = collectedBy

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}
