

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var address: String

        public var accountNo: String

        public var email: String

        public var createdOn: String

        public var bankName: String

        public var transferMode: String

        public var isActive: Bool

        public var branchName: String?

        public var displayName: String

        public var delightsUserName: String?

        public var subtitle: String

        public var ifscCode: String

        public var beneficiaryId: String

        public var id: Int

        public var comment: String?

        public var accountHolder: String

        public var title: String

        public var mobile: String?

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case address

            case accountNo = "account_no"

            case email

            case createdOn = "created_on"

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case isActive = "is_active"

            case branchName = "branch_name"

            case displayName = "display_name"

            case delightsUserName = "delights_user_name"

            case subtitle

            case ifscCode = "ifsc_code"

            case beneficiaryId = "beneficiary_id"

            case id

            case comment

            case accountHolder = "account_holder"

            case title

            case mobile

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.address = address

            self.accountNo = accountNo

            self.email = email

            self.createdOn = createdOn

            self.bankName = bankName

            self.transferMode = transferMode

            self.isActive = isActive

            self.branchName = branchName

            self.displayName = displayName

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.ifscCode = ifscCode

            self.beneficiaryId = beneficiaryId

            self.id = id

            self.comment = comment

            self.accountHolder = accountHolder

            self.title = title

            self.mobile = mobile

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var address: String

        public var accountNo: String

        public var email: String

        public var createdOn: String

        public var bankName: String

        public var transferMode: String

        public var isActive: Bool

        public var branchName: String?

        public var displayName: String

        public var delightsUserName: String?

        public var subtitle: String

        public var ifscCode: String

        public var beneficiaryId: String

        public var id: Int

        public var comment: String?

        public var accountHolder: String

        public var title: String

        public var mobile: String?

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case address

            case accountNo = "account_no"

            case email

            case createdOn = "created_on"

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case isActive = "is_active"

            case branchName = "branch_name"

            case displayName = "display_name"

            case delightsUserName = "delights_user_name"

            case subtitle

            case ifscCode = "ifsc_code"

            case beneficiaryId = "beneficiary_id"

            case id

            case comment

            case accountHolder = "account_holder"

            case title

            case mobile

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.address = address

            self.accountNo = accountNo

            self.email = email

            self.createdOn = createdOn

            self.bankName = bankName

            self.transferMode = transferMode

            self.isActive = isActive

            self.branchName = branchName

            self.displayName = displayName

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.ifscCode = ifscCode

            self.beneficiaryId = beneficiaryId

            self.id = id

            self.comment = comment

            self.accountHolder = accountHolder

            self.title = title

            self.mobile = mobile

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
