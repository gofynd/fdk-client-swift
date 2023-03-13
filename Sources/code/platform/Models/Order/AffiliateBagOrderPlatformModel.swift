

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var discount: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemSize: String

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var itemId: Int

        public var storeId: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case discount

            case identifier

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case sku

            case itemId = "item_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.itemId = itemId

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var discount: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemSize: String

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var itemId: Int

        public var storeId: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case discount

            case identifier

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case sku

            case itemId = "item_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.itemId = itemId

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
