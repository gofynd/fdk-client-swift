

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var identifier: [String: Any]

        public var discount: Double

        public var deliveryCharge: Double

        public var sku: String

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var companyId: Int

        public var avlQty: Int

        public var itemSize: String

        public var storeId: Int

        public var id: String

        public var fyndStoreId: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var hsnCodeId: String

        public var transferPrice: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case identifier

            case discount

            case deliveryCharge = "delivery_charge"

            case sku

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case storeId = "store_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.identifier = identifier

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.storeId = storeId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var identifier: [String: Any]

        public var discount: Double

        public var deliveryCharge: Double

        public var sku: String

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var companyId: Int

        public var avlQty: Int

        public var itemSize: String

        public var storeId: Int

        public var id: String

        public var fyndStoreId: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var hsnCodeId: String

        public var transferPrice: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case identifier

            case discount

            case deliveryCharge = "delivery_charge"

            case sku

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case storeId = "store_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.identifier = identifier

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.storeId = storeId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
