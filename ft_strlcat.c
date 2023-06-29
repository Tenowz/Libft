/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wivongso <wivongso@student.42nice.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 16:24:36 by wivongso          #+#    #+#             */
/*   Updated: 2022/11/15 17:16:03 by wivongso         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	k;
	size_t	slen;
	size_t	dlen;

	k = 0;
	dlen = ft_strlen(dst);
	slen = ft_strlen(src);
	if (dstsize <= dlen)
		slen += dstsize;
	else
		slen += dlen;
	while (src[k] && dlen + 1 < dstsize)
	{
		dst[dlen] = src[k];
		dlen++;
		k++;
	}
	dst[dlen] = '\0';
	return (slen);
}
