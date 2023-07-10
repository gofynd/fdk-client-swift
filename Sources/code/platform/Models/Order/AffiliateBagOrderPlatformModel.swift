

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var itemSize: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var storeId: Int

        public var transferPrice: Int

        public var priceMarked: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var itemId: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var sku: String

        public var discount: Double

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case sku

            case discount

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.sku = sku

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var itemSize: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var storeId: Int

        public var transferPrice: Int

        public var priceMarked: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var itemId: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public var sku: String

        public var discount: Double

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case sku

            case discount

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.sku = sku

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
