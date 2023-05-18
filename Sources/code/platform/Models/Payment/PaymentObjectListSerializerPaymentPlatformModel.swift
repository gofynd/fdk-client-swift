

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currentStatus: String

        public var applicationId: String

        public var createdOn: String

        public var allStatus: [String]

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var refundedBy: String

        public var id: String

        public var currency: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var paymentMode: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case id

            case currency

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.id = id

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

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
        public var currentStatus: String

        public var applicationId: String

        public var createdOn: String

        public var allStatus: [String]

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var collectedBy: String

        public var refundedBy: String

        public var id: String

        public var currency: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var paymentMode: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var companyId: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case collectedBy = "collected_by"

            case refundedBy = "refunded_by"

            case id

            case currency

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case companyId = "company_id"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.collectedBy = collectedBy

            self.refundedBy = refundedBy

            self.id = id

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.companyId = companyId

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            id = try container.decode(String.self, forKey: .id)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}
