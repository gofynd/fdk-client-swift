

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var modifiedOn: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var currency: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var applicationId: String

        public var allStatus: [String]

        public var refundedBy: String

        public var amountInPaisa: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var companyId: String

        public var id: String

        public var paymentId: String?

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case currency

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case id

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.currency = currency

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.id = id

            self.paymentId = paymentId

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var modifiedOn: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var refundObject: [String: Any]?

        public var currency: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var applicationId: String

        public var allStatus: [String]

        public var refundedBy: String

        public var amountInPaisa: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var companyId: String

        public var id: String

        public var paymentId: String?

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundObject = "refund_object"

            case currency

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case id

            case paymentId = "payment_id"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundObject = refundObject

            self.currency = currency

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.id = id

            self.paymentId = paymentId

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
