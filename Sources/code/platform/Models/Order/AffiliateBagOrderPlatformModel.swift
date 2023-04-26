

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var fyndStoreId: String

        public var itemSize: String

        public var priceEffective: Double

        public var sku: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var discount: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var modifiedOn: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case sku

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case discount

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case modifiedOn = "modified_on"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifier

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.discount = discount

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.id = id

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var fyndStoreId: String

        public var itemSize: String

        public var priceEffective: Double

        public var sku: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var discount: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var modifiedOn: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case sku

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case discount

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case modifiedOn = "modified_on"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifier

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.discount = discount

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.id = id

            self.modifiedOn = modifiedOn

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
