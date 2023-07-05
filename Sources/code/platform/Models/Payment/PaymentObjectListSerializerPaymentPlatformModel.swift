

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var id: String

        public var amountInPaisa: String

        public var companyId: String

        public var currentStatus: String

        public var userObject: [String: Any]

        public var refundedBy: String

        public var currency: String

        public var paymentMode: String

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var allStatus: [String]

        public var collectedBy: String

        public var applicationId: String

        public var paymentModeIdentifier: String

        public var modifiedOn: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case userObject = "user_object"

            case refundedBy = "refunded_by"

            case currency

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case modifiedOn = "modified_on"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.userObject = userObject

            self.refundedBy = refundedBy

            self.currency = currency

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.modifiedOn = modifiedOn

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

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

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

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
        public var id: String

        public var amountInPaisa: String

        public var companyId: String

        public var currentStatus: String

        public var userObject: [String: Any]

        public var refundedBy: String

        public var currency: String

        public var paymentMode: String

        public var createdOn: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var allStatus: [String]

        public var collectedBy: String

        public var applicationId: String

        public var paymentModeIdentifier: String

        public var modifiedOn: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case userObject = "user_object"

            case refundedBy = "refunded_by"

            case currency

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case modifiedOn = "modified_on"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.id = id

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.userObject = userObject

            self.refundedBy = refundedBy

            self.currency = currency

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.modifiedOn = modifiedOn

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currency = try container.decode(String.self, forKey: .currency)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

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

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}
