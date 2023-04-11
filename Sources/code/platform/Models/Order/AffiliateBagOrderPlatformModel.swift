

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var itemSize: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var discount: Double

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var storeId: Int

        public var quantity: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case discount

            case sku

            case identifier

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.storeId = storeId

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

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
        public var deliveryCharge: Double

        public var itemSize: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var discount: Double

        public var sku: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var storeId: Int

        public var quantity: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case discount

            case sku

            case identifier

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.sku = sku

            self.identifier = identifier

            self.avlQty = avlQty

            self.storeId = storeId

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
